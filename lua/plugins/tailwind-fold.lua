return {
  "razak17/tailwind-fold.nvim",
  opts = {
    symbol = "󱏿", -- the fold indicator character (change to whatever)
    highlight = { fg = "#38BDF8" }, -- tailwind blue, nice touch
    enabled = true, -- start enabled by default
  },
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  ft = { "html", "svelte", "astro", "vue", "typescriptreact", "javascriptreact" },
}
