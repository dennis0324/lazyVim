--- !!!!!!Lazy vim default implementation!!!!!!
--- this plugin is used for formatting code. just adding python to work
---
return {
  {
    "stevearc/conform.nvim",
    -- opts = function(_, opts)
    --   -- use this to extend or modify the default opts
    --   -- opts is the default configuration table for conform.nvim
    --   -- here, we are just returning it as-is without any changes
    --   return vim.tbl_deep_extend("force", opts, {
    --     formatters_by_ft = {
    --       lua = { "stylua" },
    --       python = { "black", "isort" },
    --       javascript = { "prettierd" },
    --       typescript = { "prettierd" },
    --       ["*"] = { "trim_whitespace" },
    --     },
    --     format_on_save = {
    --       timeout_ms = 500,
    --       lsp_fallback = true,
    --     },
    --   })
    -- end,
    opts = {
      formatters_by_ft = {
        -- lua = { "stylua" },
        python = { "black", "isort" },
        -- javascript = { "prettierd" },
        -- typescript = { "prettierd" },
        -- ["*"] = { "trim_whitespace" },
      },
    },
  },
}
