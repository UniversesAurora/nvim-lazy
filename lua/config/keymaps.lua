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

-- Remap Toggle comment to Ctrl+/
-- On some terminals, Ctrl+/ sends <C-_> so...
vim.keymap.del("n", "<C-/>")
vim.keymap.del("n", "<C-_>")
vim.keymap.set("n", "<C-/>", "gcc", { desc = "Toggle comment", remap = true })
vim.keymap.set("x", "<C-/>", "gc", { desc = "Toggle comment", remap = true })
vim.keymap.set("n", "<C-_>", "gcc", { desc = "Toggle comment", remap = true })
vim.keymap.set("x", "<C-_>", "gc", { desc = "Toggle comment", remap = true })
