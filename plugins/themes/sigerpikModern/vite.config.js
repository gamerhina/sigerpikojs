import { defineConfig } from 'vite';

export default defineConfig({
  build: {
    outDir: 'dist',
    rollupOptions: {
      input: {
        main: 'assets/js/theme.js',
        style: 'assets/css/theme.css'
      }
    }
  }
});
