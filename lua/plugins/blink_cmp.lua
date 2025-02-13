return {
  {
    "blink.cmp",
    opts = {
      snippets = {
        expand = function(snippet, _)
          return LazyVim.cmp.expand(snippet)
        end,
      },

      -- experimental signature help support
      -- signature = { enabled = true },

      sources = {
        -- adding any nvim-cmp sources here will enable them
        -- with blink.compat
        default = { "copilot", "lsp", "path", "snippets", "buffer" },
      },

      keymap = {
        preset = "super-tab",
      },
    },
  },
}
