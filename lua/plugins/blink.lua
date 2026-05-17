return {
  "saghen/blink.cmp",
  opts = {
    enabled = function()
      local ft = vim.bo.filetype
      if ft == "css" or ft == "scss" or ft == "less" then
        local line = vim.api.nvim_get_current_line()
        local col = vim.api.nvim_win_get_cursor(0)[2]
        local before_cursor = line:sub(1, col)

        if before_cursor:match("{%s*$") then
          return false
        end

        if before_cursor:match("^%s*$") then
          return false
        end
      end

      return true
    end,
  },
}
