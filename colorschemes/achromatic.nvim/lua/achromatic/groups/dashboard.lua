local M = {}

M.url = "https://github.com/nvimdev/dashboard-nvim"

function M.get(c)
  -- stylua: ignore
  return {
    -- General
    DashboardHeader           = { fg = c.white },
    DashboardFooter           = { fg = c.white },
    -- Hyper theme
    DashboardProjectTitle     = { fg = c.cyan },
    DashboardProjectTitleIcon = { fg = c.orange },
    DashboardProjectIcon      = { fg = c.yellow },
    DashboardMruTitle         = { fg = c.cyan },
    DashboardMruIcon          = { fg = c.purple },
    DashboardFiles            = { fg = c.blue },
    DashboardShortCutIcon     = { fg = c.magenta },
    -- Doome theme
    DashboardDesc             = { fg = c.white },
    DashboardKey              = { fg = c.orange },
    DashboardIcon             = { fg = c.white },
    DashboardShortCut         = { fg = c.white },
  }
end

return M
