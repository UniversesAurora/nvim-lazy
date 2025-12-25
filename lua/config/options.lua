-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Open this comment in powershell
-- LazyVim.terminal.setup("pwsh")

-- LazyVim auto format
vim.g.autoformat = false

local opt = vim.opt
opt.relativenumber = false -- Relative line numbers
opt.clipboard = "unnamedplus"
opt.expandtab = false -- Use spaces instead of tabs
opt.shiftwidth = 4 -- Size of an indent
opt.tabstop = 4 -- Number of spaces tabs count for
opt.wrap = true -- Disable line wrap
opt.showmatch = true
opt.cindent = true
opt.smarttab = true
opt.ruler = true
opt.colorcolumn = "80"
opt.visualbell = true
opt.list = false
opt.listchars = "tab:> ,trail:·,nbsp:·"
opt.completeopt = "menu,menuone,noselect"
opt.guicursor =
  "n-v-c:block-Cursor,i-ci-ve-sm:block-blinkwait1000-blinkon500-blinkoff500-Cursor,r-cr:hor100-blinkwait5000-blinkon500-blinkoff500"
vim.opt.whichwrap:append({
  ["<"] = true,
  [">"] = true,
  ["["] = true,
  ["]"] = true,
  h = true,
  l = true,
})

vim.g.sweetie = {
  -- Pop-up menu pseudo-transparency
  -- It requires `pumblend` option to have a non-zero value
  pumblend = {
    enable = true,
    transparency_amount = 20,
  },
  -- Override default sweetie color palettes
  -- Palette fields:
  --  bg
  --  fg
  --  bg_hl
  --  bg_alt
  --  fg_alt
  --  grey
  --  dark_grey
  --  red
  --  orange
  --  green
  --  teal
  --  yellow
  --  blue
  --  magenta
  --  violet
  --  cyan
  palette = {
    dark = { fg = 0x9575CD, bg_hl = 0x4527A0, blue = 0xB39DDB, magenta = 0x2196F3 },
    light = { fg = 0x5E35B1, bg = 0xFFFFFF, bg_hl = 0xEDE7F6, bg_alt = 0xEDE7F6, blue = 0x673AB6, magenta = 0x2196F3 },
  },
  -- Override default highlighting groups options
  overrides = {},
  -- Custom plugins highlighting groups
  integrations = {
    lazy = true,
    neorg = true,
    neogit = true,
    neomake = true,
    telescope = true,
  },
  -- Enable custom cursor coloring even in terminal Neovim sessions
  cursor_color = false,
  -- Use sweetie's palette in `:terminal` instead of your default terminal colorscheme
  terminal_colors = true,
}
