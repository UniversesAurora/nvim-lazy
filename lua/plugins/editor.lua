return {
  {
    "folke/trouble.nvim",
    opts = { use_diagnostic_signs = true },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          visible = true,
          show_hidden_count = true,
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_by_name = {
            ".git",
            ".DS_Store",
            "thumbs.db",
          },
          never_show = {},
        },
      },
    },
  },
  { "NMAC427/guess-indent.nvim", event = "VeryLazy", opts = {} },
}
