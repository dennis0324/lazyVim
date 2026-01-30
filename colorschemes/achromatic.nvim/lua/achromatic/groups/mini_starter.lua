local M = {}

M.url = "https://github.com/echasnovski/mini.starter"

function M.get(c)
  -- stylua: ignore
  return {
    MiniStarterCurrent    = { nocombine = true },
    MiniStarterFooter     = { fg = c.yellow, italic = true },
    MiniStarterHeader     = { fg = c.blue },
    MiniStarterInactive   = { fg = c.comment, illegal = true },
    MiniStarterItem       = { fg = c.fg, bg = c.none },
    MiniStarterItemBullet = { fg = c.border_highlight },
    MiniStarterItemPrefix = { fg = c.warning },
    MiniStarterQuery      = { fg = c.info },
    MiniStarterSection    = { fg = c.blue1 },
  }
end

return M
