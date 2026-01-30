--- the oil.nvim plugin is a file explorer that provides a more intuitive way to navigate and manage files within Neovim.
return {
  {
    "stevearc/oil.nvim",
    priority = 1000,
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("oil").setup({
        keymaps = {
          ["g?"] = "actions.show_help",
          ["L"] = "actions.select",
          ["<C-\\>"] = "actions.select_vsplit",
          ["<C-t>"] = "actions.select_tab",
          ["<C-p>"] = "actions.preview",
          ["q"] = "actions.close",
          ["`"] = "actions.cd",
          ["~"] = "actions.tcd",
          ["g."] = "actions.toggle_hidden",
          ["H"] = "actions.parent",
        },
      })
    end,
  },
}
