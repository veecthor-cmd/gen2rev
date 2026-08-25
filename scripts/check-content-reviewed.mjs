#!/usr/bin/env node
/**
 * The technical enforcement named in BACKEND_REQUIREMENTS.md §4: "the ingestion script/process
 * should refuse to load a book's challenges if that book has no `approved` entry in
 * docs/CONTENT_REVIEW_LOG.md, not just rely on process discipline alone." Ingestion in this
 * project is a Claude-Code-run workflow (a SQL file in docs/ingest/, applied via the Supabase
 * MCP's apply_migration), not app runtime code — so this is a pre-flight gate to run before that
 * apply, not a database trigger. See MEMORY.md 2026-08-25 for why this exists: an earlier session
 * found the doc described this check but no such tool had ever been built.
 *
 * Usage: node scripts/check-content-reviewed.mjs docs/content/<book-slug>.md [docs/content/<other>.md ...]
 * Exits 0 only if every given content brief has a docs/CONTENT_REVIEW_LOG.md row whose Decision
 * is "approved" or "approved-with-changes". Exits 1 (with a clear reason per file) otherwise.
 */
import { readFileSync } from 'node:fs'
import { fileURLToPath } from 'node:url'
import path from 'node:path'

const ROOT = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..')
const LOG_PATH = path.join(ROOT, 'docs', 'CONTENT_REVIEW_LOG.md')
const ALLOWED_DECISIONS = new Set(['approved', 'approved-with-changes'])

function parseRows(markdown) {
  const rows = []
  for (const line of markdown.split('\n')) {
    if (!line.startsWith('|') || /^\|[\s-]*\|/.test(line)) continue // skip non-rows and the header separator
    const cells = line
      .slice(1, -1)
      .split('|')
      .map((c) => c.trim())
    if (cells.length < 6 || cells[0] === 'Book') continue
    const [book, contentBrief, , , decision, date] = cells
    rows.push({
      book,
      contentBrief: contentBrief.replace(/`/g, '').trim(),
      decision: decision.replace(/[*`]/g, '').trim().toLowerCase(),
      date,
    })
  }
  return rows
}

function checkOne(rows, requestedPath) {
  const normalized = requestedPath.replace(/\\/g, '/').replace(/^\.\//, '')
  const row = rows.find((r) => r.contentBrief === normalized)

  if (!row) {
    return { ok: false, message: `REFUSED: no docs/CONTENT_REVIEW_LOG.md entry for "${normalized}" — content must be submitted for theological review before it can be ingested.` }
  }
  if (!ALLOWED_DECISIONS.has(row.decision)) {
    return {
      ok: false,
      message: `REFUSED: "${row.book}" (${normalized}) has decision "${row.decision}" as of ${row.date} — only "approved" or "approved-with-changes" may be ingested.`,
    }
  }
  return { ok: true, message: `OK: "${row.book}" (${normalized}) is "${row.decision}" as of ${row.date}.` }
}

function main() {
  const targets = process.argv.slice(2)
  if (targets.length === 0) {
    console.error('Usage: node scripts/check-content-reviewed.mjs docs/content/<book-slug>.md [more paths...]')
    process.exit(2)
  }

  const markdown = readFileSync(LOG_PATH, 'utf8')
  const rows = parseRows(markdown)

  let allOk = true
  for (const target of targets) {
    const result = checkOne(rows, target)
    console.log(result.message)
    if (!result.ok) allOk = false
  }

  process.exit(allOk ? 0 : 1)
}

main()
