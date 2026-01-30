return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    -- opts = function(_, opts)
    --   opts.highlight.enable = true
    --   opts.ensure_installed = {
    --     "astro",
    --     "cmake",
    --     "cpp",
    --     "css",
    --     "fish",
    --     "gitignore",
    --     "go",
    --     "graphql",
    --     "http",
    --     "php",
    --     "rust",
    --     "scss",
    --     "sql",
    --     "svelte",
    --     "javascript",
    --     "typescript",
    --     "tsx",
    --   }
    -- end,
  },
}
