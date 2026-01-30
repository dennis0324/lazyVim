local M = {}

M.url = "https://github.com/folke/noice.nvim"

function M.get(c)
  -- stylua: ignore
  local ret = {
    -- NoiceCmdlineIconInput          = { fg = c.highlight },
    NoiceCmdlineIconLua            = { fg = c.white2 },
    NoiceCmdlineIconCmdline        = { fg = c.white2 },
    NoiceCmdlinePopupTitle         = { fg = c.white2 },
    NoiceCmdlinePopupBorderCmdline = { fg = c.white2 },
    NoiceCmdlinePopupBorderInput   = { fg = c.yellow },
    NoiceCmdlinePopupBorderLua     = { fg = c.white2 },
    NoiceCmdlinePopupTitleInput    = { fg = c.yellow },
    NoiceCmdlinePopupTitleLua      = { fg = c.blue1 },
    NoiceCompletionItemKindDefault = { fg = c.fg_dark, bg = c.none },
  }
  require("achromatic.groups.kinds").kinds(ret, "NoiceCompletionItemKind%s")
  return ret
end

return M
