-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Toggle interface for Invisible Characters
Snacks.toggle.new({
  name = "Invisible Characters",

  get = function()
    return vim.g.SHOW_INVISIBLE_CHARS == true
  end,

  set = function(state)
    vim.g.SHOW_INVISIBLE_CHARS = state
    vim.opt.list = state
  end,
}):map("<leader>uv")
