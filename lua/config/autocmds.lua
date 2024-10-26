-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local function augroup(name)
  return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

-- ChatGPT NB!!!!!
vim.api.nvim_create_autocmd("OptionSet", {
  group = augroup("AutoWrapInDiff"),
  pattern = "diff",
  callback = function()
    -- check in diff mode
    if vim.wo.diff then
      vim.wo.wrap = true
    else
      vim.wo.wrap = false
    end
  end,
})
