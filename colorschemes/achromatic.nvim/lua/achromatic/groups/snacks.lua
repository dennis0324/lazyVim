local Util = require("achromatic.util")

local M = {}

M.url = "https://github.com/folke/snacks.nvim"

function M.get(c)
  -- stylua: ignore
  local ret = {
    SnacksNotifierDebug       = { fg = c.fg, bg = c.bg },
    SnacksNotifierBorderDebug = { fg = Util.blend_bg(c.comment, 0.4), bg = c.bg },
    SnacksNotifierIconDebug   = { fg = c.comment },
    SnacksNotifierTitleDebug  = { fg = c.comment },
    SnacksNotifierError       = { fg = c.fg, bg = c.bg },
    SnacksNotifierBorderError = { fg = Util.blend_bg(c.error, 0.4), bg = c.bg },
    SnacksNotifierIconError   = { fg = c.error },
    SnacksNotifierTitleError  = { fg = c.error },
    SnacksNotifierInfo        = { fg = c.fg, bg = c.bg },
    SnacksNotifierBorderInfo  = { fg = Util.blend_bg(c.info, 0.4), bg = c.bg },
    SnacksNotifierIconInfo    = { fg = c.info },
    SnacksNotifierTitleInfo   = { fg = c.info },
    SnacksNotifierTrace       = { fg = c.fg, bg = c.bg },
    SnacksNotifierBorderTrace = { fg = Util.blend_bg(c.purple, 0.4), bg = c.bg },
    SnacksNotifierIconTrace   = { fg = c.purple },
    SnacksNotifierTitleTrace  = { fg = c.purple },
    SnacksNotifierWarn        = { fg = c.fg, bg = c.bg },
    SnacksNotifierBorderWarn  = { fg = Util.blend_bg(c.warning, 0.4), bg = c.bg },
    SnacksNotifierIconWarn    = { fg = c.warning },
    SnacksNotifierTitleWarn   = { fg = c.warning },
    -- Dashboard
    SnacksDashboardDesc       = { fg = c.white },
    SnacksDashboardFooter     = { fg = c.white },
    SnacksDashboardHeader     = { fg = c.white },
    SnacksDashboardIcon       = { fg = c.white },
    SnacksDashboardKey        = { fg = c.orange },
    SnacksDashboardSpecial    = { fg = c.purple },
    SnacksDashboardDir        = { fg = c.dark3 },
    -- Profiler
    SnacksProfilerIconInfo    = { bg = Util.blend_bg(c.blue1, 0.3), fg = c.blue1 },
    SnacksProfilerBadgeInfo   = { bg = Util.blend_bg(c.blue1, 0.1), fg = c.blue1 },
    SnacksScratchKey          = "SnacksProfilerIconInfo",
    SnacksScratchDesc         = "SnacksProfilerBadgeInfo",
    SnacksProfilerIconTrace   = { bg = Util.blend_bg(c.blue7, 0.3), fg = c.dark3 },
    SnacksProfilerBadgeTrace  = { bg = Util.blend_bg(c.blue7, 0.1), fg = c.dark3 },
    SnacksIndent              = { fg = c.fg_gutter, nocombine = true },
    SnacksIndentScope         = { fg = c.blue1, nocombine = true },
    SnacksZenIcon             = { fg = c.purple },
    SnacksInputIcon           = { fg = c.blue1 },
    SnacksInputBorder         = { fg = c.yellow },
    SnacksInputTitle          = { fg = c.yellow },
    -- Picker
    SnacksPickerInputBorder   = { fg = c.orange, bg = c.bg_float },
    SnacksPickerInputTitle         = { fg = c.orange, bg = c.bg_float },
    SnacksPickerBoxTitle         = { fg = c.orange, bg = c.bg_float },
    SnacksPickerSelected    = { fg = c.magenta2},
    SnacksPickerToggle         = "SnacksProfilerBadgeInfo",
    SnacksPickerPickWinCurrent   = { fg = c.fg, bg = c.magenta2, bold = true },
    SnacksPickerPickWin   = { fg = c.fg, bg = c.bg_search, bold = true },
  }
  for i, color in ipairs(c.rainbow) do
    ret["SnacksIndent" .. i] = { fg = color, nocombine = true }
  end
  return ret
end

return M
