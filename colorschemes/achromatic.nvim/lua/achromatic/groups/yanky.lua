local M = {}

M.url = "https://github.com/gbprod/yanky.nvim"

function M.get(c)
  -- stylua: ignore
  return {
    YankyPut    = "Search",
    YankyYanked = "IncSearch",
  }
end

return M
