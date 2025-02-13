local logo = [[
        ⟋|､
          (°､ ｡ 7
          |､  ~ヽ
            じしf_,)〳
]]
logo = string.rep("\n", 8) .. logo .. "\n\n"
return {
  {
    "snacks.nvim",
    opts = {
      picker = {
        -- your picker configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        --    -- Top Pickers & Explorer
        keys = {

          {
            "<leader><space>",
            function()
              Snacks.picker.smart()
            end,
            desc = "Smart Find Files",
          },
          {
            "<leader>,",
            function()
              Snacks.picker.buffers()
            end,
            desc = "Buffers",
          },
          {
            "<leader>/",
            function()
              Snacks.picker.grep()
            end,
            desc = "Grep",
          },
          {
            "<leader>:",
            function()
              Snacks.picker.command_history()
            end,
            desc = "Command History",
          },
          {
            "<leader>n",
            function()
              Snacks.picker.notifications()
            end,
            desc = "Notification History",
          },
          {
            "<leader>e",
            function()
              Snacks.explorer()
            end,
            desc = "File Explorer",
          },
          -- find
          {
            "<leader>fb",
            function()
              Snacks.picker.buffers()
            end,
            desc = "Buffers",
          },
          {
            "<leader>fc",
            function()
              Snacks.picker.files({ cwd = vim.fn.stdpath("config") })
            end,
            desc = "Find Config File",
          },
          {
            "<leader>ff",
            function()
              Snacks.picker.files()
            end,
            desc = "Find Files",
          },
          {
            "<leader>fg",
            function()
              Snacks.picker.git_files()
            end,
            desc = "Find Git Files",
          },
          {
            "<leader>fp",
            function()
              Snacks.picker.projects()
            end,
            desc = "Projects",
          },
          {
            "<leader>fr",
            function()
              Snacks.picker.recent()
            end,
            desc = "Recent",
          },
        },
      },
      dashboard = {
        preset = {
          pick = function(cmd, opts)
            return LazyVim.pick(cmd, opts)()
          end,
          header = [[
    ⟋|､
      (°､ ｡ 7
      |､  ~ヽ
        じしf_,)〳
]],
       -- stylua: ignore
       ---@type snacks.dashboard.Item[]
       keys = {
         { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
         { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
         { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
         { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
         { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
         { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
         { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
       },
        },
      },
    },
  },
}
