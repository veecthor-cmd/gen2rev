import { defineConfig } from 'vitest/config'
import react from '@vitejs/plugin-react'

// https://vite.dev/config/
export default defineConfig({
  plugins: [react()],
  server: {
    // Dev server runs under WSL2 against a /mnt/c mount; native fs.watch doesn't cross that
    // boundary, so HMR needs polling to see edits made from the Windows side. See MEMORY.md.
    watch: { usePolling: true },
    host: true,
  },
  test: {
    environment: 'node',
    include: ['src/**/*.test.ts'],
  },
})
