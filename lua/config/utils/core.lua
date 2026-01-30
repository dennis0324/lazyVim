local cmd = vim.cmd
local M = {}

M.fg = function(group, col)
  cmd("hi " .. group .. " guifg=" .. col)
end

return M
