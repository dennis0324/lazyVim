return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = { "hrsh7th/vim-vsnip" },
    opts = function(_, opts)
      local cmp = require("cmp")

      local has_words_before = function()
        unpack = unpack or table.unpack
        local line, col = unpack(vim.api.nvim_win_get_cursor(0))
        return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
      end

      local feedkey = function(key, mode)
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
      end
      opts.mapping = cmp.mapping.preset.insert({
        -- ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        -- ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.confirm({
          behavior = cmp.ConfirmBehavior.Replace,
          select = true,
        }),
        ["<C-e>"] = cmp.mapping.close(),
        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            local entries = cmp.get_entries()
            cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })

            if #entries == 1 then
              cmp.confirm()
            end
          else
            fallback()
          end
        end, { "i", "s" }),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        -- ["<Tab>"] = cmp.mapping.confirm({
        --   behavior = cmp.ConfirmBehavior.Replace,
        --   select = true,
        -- }),
      })

      -- opts.sources = cmp.config.sources({
      --   { name = "nvim_lsp" },
      --   { name = "buffer", max_item_count = 5 },
      --   { name = "copilot" },
      --   { name = "path", max_item_count = 5 },
      -- })
      opts.sources = cmp.config.sources({
        { name = "nvim_lsp", priority = 9999, max_item_count = 5, group_index = 1 },
        { name = "treesitter", priority = 5, max_item_count = 3, group_index = 1 },
        { name = "path", priority = 3, max_item_count = 2, group_index = 1 },
        { name = "copilot", priority = 1, max_item_count = 3, group_index = 1 },
      })
    end,
  },
}
