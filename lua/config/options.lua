-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt

-- === Editor Feel ===
opt.relativenumber = true -- Relative line numbers (great for motions)
opt.scrolloff = 8 -- Keep 8 lines above/below cursor
opt.sidescrolloff = 8
opt.wrap = false -- No line wrap (like VSCode default)
opt.cursorline = true -- Highlight current line

-- === Indentation ===
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true -- Spaces instead of tabs
opt.smartindent = true

-- === Search ===
opt.ignorecase = true
opt.smartcase = true -- Case-sensitive if uppercase used
opt.hlsearch = true -- Highlight search results
opt.incsearch = true -- Incremental search

-- === Files ===
opt.swapfile = false
opt.backup = false
opt.undofile = true -- Persistent undo (huge QoL)
opt.undolevels = 10000

-- === UI ===
opt.termguicolors = true
opt.signcolumn = "yes" -- Always show sign column (no layout shift)
opt.numberwidth = 4
opt.colorcolumn = "120" -- Ruler at 120 chars
opt.splitright = true -- Vertical splits open right
opt.splitbelow = true -- Horizontal splits open below
opt.laststatus = 3 -- Global statusline

-- === Performance ===
opt.updatetime = 200 -- Faster CursorHold (default 4000ms)
opt.timeoutlen = 300 -- Key sequence timeout

-- === Clipboard ===
opt.clipboard = "unnamedplus" -- Sync with system clipboard

-- === Completion ===
opt.pumheight = 10 -- Max items in completion menu
opt.completeopt = "menu,menuone,noselect"

-- === Whitespace visibility (like VSCode "render whitespace") ===
opt.list = true
opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
