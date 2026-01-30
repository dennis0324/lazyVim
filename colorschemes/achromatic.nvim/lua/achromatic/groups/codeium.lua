local M = {}

M.url = "https://github.com/Exafunction/codeium.nvim"

function M.get(c)
  -- stylua: ignore
  local ret = {
    CodeiumSuggestion = { fg = c.terminal_black },
  }
  return ret
end

return M
