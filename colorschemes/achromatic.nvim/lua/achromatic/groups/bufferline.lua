local M = {}

M.url = "https://github.com/akinsho/bufferline.nvim"

function M.get(c)
  -- stylua: ignore
  return {
    BufferLineIndicatorSelected = { fg = c.git.change },
  }
end

return M
