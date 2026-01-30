local Util = require("achromatic.util")

local M = {}

M.url = "https://github.com/rcarriga/nvim-notify"

function M.get(c, opts)
  -- stylua: ignore
  return {
    NotifyBackground  = { fg = c.fg, bg = c.bg },
    NotifyDEBUGBody   = { fg = c.fg, bg = c.bg },
    NotifyDEBUGBorder = { fg = Util.blend_bg(c.comment, 0.3), bg = c.none },
    NotifyDEBUGIcon   = { fg = c.comment },
    NotifyDEBUGTitle  = { fg = c.comment },
    NotifyERRORBody   = { fg = c.fg, bg = c.bg },
    NotifyERRORBorder = { fg = Util.blend_bg(c.error, 0.3), bg = c.none },
    NotifyERRORIcon   = { fg = c.error },
    NotifyERRORTitle  = { fg = c.error },
    NotifyINFOBody    = { fg = c.fg, bg = c.bg },
    NotifyINFOBorder  = { fg = Util.blend_bg(c.info, 0.3), bg = c.none },
    NotifyINFOIcon    = { fg = c.info },
    NotifyINFOTitle   = { fg = c.info },
    NotifyTRACEBody   = { fg = c.fg, bg = c.bg },
    NotifyTRACEBorder = { fg = Util.blend_bg(c.purple, 0.3), bg = c.none },
    NotifyTRACEIcon   = { fg = c.purple },
    NotifyTRACETitle  = { fg = c.purple },
    NotifyWARNBody    = { fg = c.fg, bg = c.bg },
    NotifyWARNBorder  = { fg = Util.blend_bg(c.warning, 0.3), bg = c.none },
    NotifyWARNIcon    = { fg = c.warning },
    NotifyWARNTitle   = { fg = c.warning },
  }
end

return M
