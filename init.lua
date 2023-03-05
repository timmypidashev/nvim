-- Load all lua modules
require('options')
require('plugins')
require('keymaps')

-- Launch project telescope view on startup
vim.api.nvim_exec ([[ autocmd VimEnter * :Telescope projects ]], false)
