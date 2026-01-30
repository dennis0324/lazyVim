return {
  {
    "achromatic",
    dir = "~/.config/nvim/colorschemes/achromatic.nvim",
    -- lazy = false,
    -- priority = 1000,
    -- config = function()
    --   vim.cmd("colorscheme achromatic")
    -- end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "achromatic",
    },
  },
}
