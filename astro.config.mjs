// @ts-check
import { defineConfig } from "astro/config";
import tailwindcss from "@tailwindcss/vite";

import sitemap from "@astrojs/sitemap";

// https://astro.build/config
export default defineConfig({
  output: "static",
  site: "https://asim-chaulagain.com.np",

  vite: {
    plugins: [tailwindcss()],
  },

  integrations: [
    sitemap({
      xslURL: "/sitemap-style.xsl",
      lastmod: new Date(),
    }),
  ],
});
