return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        vtsls = {
          filetypes = {
            "javascript",
            "javascriptreact", -- .jsx
            "typescript",
            "typescriptreact", -- .tsx
          },
        },
      },
    },
  },
}
