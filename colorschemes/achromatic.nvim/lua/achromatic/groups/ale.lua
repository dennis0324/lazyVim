local M = {}

M.url = "https://github.com/dense-analysis/ale"

function M.get(c)
  -- stylua: ignore
  return {
    ALEErrorSign   = { fg = c.error },
    ALEWarningSign = { fg = c.warning },
  }
end

return M
