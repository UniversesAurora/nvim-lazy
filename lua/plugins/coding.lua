return {
  {
    'saghen/blink.cmp',
    opts = {
      completion = {
        list = { selection = { preselect = false, auto_insert = true } },
        documentation = { auto_show = true },
      },
      cmdline = {
        -- enabled = true,
        keymap = {
          -- Prevent History Pollution when aborting commands
          ["<Esc>"] = {
            function(cmp)
              -- Close command interface
              cmp.cancel()
              -- Send <C-u> (Clear Line) followed by <C-c> (Interrupt)
              -- Defers the exit signal to the next event loop tick
              vim.schedule(function()
                vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-u><C-c>", true, true, true), "n", true)
              end)
              return true
            end,
          },
          ["<C-c>"] = {
            function(cmp)
              cmp.cancel()
              vim.schedule(function()
                vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-u><C-c>", true, true, true), "n", true)
              end)
              return true
            end,
          },

          -- ["<Tab>"] = { "show", "select_next", "fallback" },
          -- ["<S-Tab>"] = { "select_prev", "fallback" },

          -- Up/Down keymaps:
          --  - If Menu is visible AND an item is active: Navigate the menu.
          --  - Otherwise: Fallback to Neovim's native history traversal (Up/Down).
          ["<Down>"] = {
            function(cmp)
              if cmp.is_menu_visible() and cmp.get_selected_item() then
                return cmp.select_next()
              end
            end,
            "fallback",
          },
          ["<Up>"] = {
            function(cmp)
              if cmp.is_menu_visible() and cmp.get_selected_item() then
                return cmp.select_prev()
              end
            end,
            "fallback",
          },

          -- Enter keymap:
          --  - Explicitly 'accept' the completion to update the buffer.
          --  - Schedule the execution signal (<CR>) for the next event loop tick.
          ["<CR>"] = {
            function(cmp)
              if cmp.is_menu_visible() and cmp.get_selected_item() then
                cmp.accept()
                vim.schedule(function()
                  vim.api.nvim_feedkeys(
                    vim.api.nvim_replace_termcodes("<CR>", true, true, true),
                    "c",
                    true
                  )
                end)

                return true
              end
            end,
            "fallback",
          },
        },
      },
    },
  },
}
