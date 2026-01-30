local Util = require("achromatic.util")

local M = {}

M.url = "https://github.com/nvim-treesitter/nvim-treesitter-context"

function M.get(c)
  -- stylua: ignore
  return {
    TreesitterContext = { bg = Util.blend_bg(c.fg_gutter, 0.8) },
  }
end

return M
