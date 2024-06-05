---@type ChadrcConfig


vim.filetype.add({
  extension = {
    tpp = 'cpp',
  }
})


local M = {}

M.ui = { theme = 'monekai' }
M.plugins = "custom.plugins"
M.mappings = require("custom.mappings")

return M
