local Util = require("achromatic.util")
local palette = require("achromatic.colors.palette")

local M = {}

---@param opts? tokyonight.Config
function M.setup()
  local colors = palette

  Util.bg = colors.bg
  Util.fg = colors.fg

  colors.none = "NONE"

  colors.diff = {
    add = Util.blend_bg(colors.green2, 0.15),
    delete = Util.blend_bg(colors.red1, 0.15),
    change = Util.blend_bg(colors.blue7, 0.15),
    text = colors.blue7,
  }

  colors.git.ignore = colors.dark3
  colors.black = Util.blend_bg(colors.bg, 0.8, "#000000")
  colors.border_highlight = Util.blend_bg(colors.white, 0.8)
  colors.border = colors.black

  -- Popups and statusline always get a dark background
  colors.bg_popup = colors.bg
  colors.bg_statusline = colors.bg_dark

  -- Sidebar and Floats are configurable
  colors.bg_sidebar = colors.bg
  -- or opts.styles.sidebars == "dark" and colors.bg_dark
  -- or

  colors.bg_float = colors.bg
  -- or opts.styles.floats == "dark" and colors.bg_dark
  -- or colors.bg

  colors.bg_visual = Util.blend_bg(colors.white, 0.4)
  colors.bg_search = colors.bg
  colors.fg_sidebar = colors.bg
  colors.fg_float = colors.fg

  colors.error = colors.red1
  colors.todo = colors.blue
  colors.warning = colors.yellow
  colors.info = colors.blue2
  colors.hint = colors.teal

  colors.directory = "#aaaaaa"

  colors.rainbow = {
    colors.blue,
    colors.yellow,
    colors.green,
    colors.teal,
    colors.magenta,
    colors.purple,
    colors.orange,
    colors.red,
  }

  -- stylua: ignore
  --- @class TerminalColors
  colors.terminal = {
    color0 = "#1D1F21",
    color8 = "#666666",
    color1 = "#cc6666",
    color9 = "#d54e53",
    color2 = "#B5DB68",
    color10 = "#b9ca4a",
    color3 = "#f0c674",
    color11 = "#e7c547",
    color4 = "#81a2be",
    color12 = "#7aa6da",
    color5 = "#b294bb",
    color13 = "#c397d9",
    color6 = "#8abeb7",
    color14 = "#70c0b1",
    color7 = "#c5c8c6",
    color15 = "#eaeaea",
    -- black          = colors.black,
    -- black_bright   = colors.terminal_black,
    -- red            = colors.red,
    -- red_bright     = Util.brighten(colors.red),
    -- green          = colors.green,
    -- green_bright   = Util.brighten(colors.green),
    -- yellow         = colors.yellow,
    -- yellow_bright  = Util.brighten(colors.yellow),
    -- blue           = colors.blue,
    -- blue_bright    = Util.brighten(colors.blue),
    -- magenta        = colors.magenta,
    -- magenta_bright = Util.brighten(colors.magenta),
    -- cyan           = colors.cyan,
    -- cyan_bright    = Util.brighten(colors.cyan),
    -- white          = colors.fg_dark,
    -- white_bright   = colors.fg,
  }

  return colors
end

return M
