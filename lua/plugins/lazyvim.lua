return {
  { "NTBBloodbath/sweetie.nvim" },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "sweetie",

      -- https://github.com/LazyVim/LazyVim/issues/2216#issuecomment-2091460516
      kind_filter = {
        default = false,
      },
    },
  },
}
