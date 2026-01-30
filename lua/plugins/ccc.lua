--- this plugin is used for color picker
return {
  {
    "uga-rosa/ccc.nvim",
    config = function()
      require("ccc").setup({
        -- Your preferred settings
        -- Example: enable highlighter
        highlighter = {
          auto_enable = true,
          lsp = true,
        },
      })
    end,
    -- Optional: Add configuration options here if needed,
    -- for example, setting up keybindings or default behaviors.
    -- config = function()
    --   require("ccc").setup({
    --     -- Your ccc.nvim configuration options
    --   })
    -- end,
  },
}
