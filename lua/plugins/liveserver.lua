return {
  "selimacerbas/live-server.nvim",
  dependencies = {
    "folke/which-key.nvim",
    "nvim-telescope/telescope.nvim", -- recommended for path picker
  },
  init = function()
    -- which-key group label only (best practice)
    local ok, wk = pcall(require, "which-key")
    if ok then
      wk.add({ { "<leader>z", group = "LiveServer" } })
    end
  end,
  opts = {
    default_port = 8000,
    live_reload = { enabled = true, inject_script = true, debounce = 120, css_inject = true },
    directory_listing = { enabled = true, show_hidden = false },
  },
  keys = {
    { "<leader>zs", "<cmd>LiveServerStart<cr>", desc = "Start (pick path & port)" },
    { "<leader>zo", "<cmd>LiveServerOpen<cr>", desc = "Open existing port in browser" },
    { "<leader>zr", "<cmd>LiveServerReload<cr>", desc = "Force reload (pick port)" },
    { "<leader>zt", "<cmd>LiveServerToggleLive<cr>", desc = "Toggle live-reload (pick port)" },
    { "<leader>zi", "<cmd>LiveServerStatus<cr>", desc = "Show server status" },
    { "<leader>zS", "<cmd>LiveServerStop<cr>", desc = "Stop one (pick port)" },
    { "<leader>zA", "<cmd>LiveServerStopAll<cr>", desc = "Stop all" },
  },
  config = function(_, opts)
    require("live_server").setup(opts)
  end,
}
