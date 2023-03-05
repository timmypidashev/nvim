-- Define some nice li-el helpers
local keymap = vim.keymap
local glob = vim.g

-- Neovide
if vim.g.neovide == true then
    -- Remap Super as le key
    vim.g.neovide_input_logo = true
    vim.g.mapleader = "<D->"
    -- Hide mouse
    vim.g.neovide_hide_mouse_when_typing = true
    -- Refresh rate
    vim.g.neovide_refresh_rate = 60
    -- Idle refresh rate
    vim.g.neovide_refresh_rate_idle = 5
    -- Confirm Quit
    vim.g.neovide_confirm_quit = true
    -- Fullscreen
    vim.g.neovide_fullscreen = true
    -- Cursor antialiasing
    vim.g.neovide_cursor_antialiasing = true
    -- Animate when in insert mode
    vim.g.neovide_cursor_animate_in_insert_mode = true
    -- Animate cursor in command mode
    vim.g.neovide_cursor_animate_command_line = false
    -- Scaling
    vim.api.nvim_set_keymap("n", "<D-=>", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>", { silent = true })
    vim.api.nvim_set_keymap("n", "<D-->", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>", { silent = true })
    vim.api.nvim_set_keymap("n", "<D-0>", ":lua vim.g.neovide_scale_factor = 1<CR>", { silent = true })
end

-- Leader key not NEOVIM
if vim.g.neovide ~= true then
    vim.g.mapleader = "<Space>"
end


-- Keymaps
-- "MODE" "KEYMAP" "COMMAND" "CR IS ENTER KEY"
--

-- Source neovim config
keymap.set("n", "<D-r>", ":source<CR>")

-- Save work
keymap.set("i", "<D-s>", ":w<CR>")

-- Undo change
keymap.set("n", "<D-u", ":undo<CR>")



-- Copy/Paste
if vim.g.neovide then
  vim.g.neovide_input_use_logo = 1 -- enable use of the logo (cmd) key
  vim.keymap.set('v', '<D-c>', '"+y') -- Copy
  vim.keymap.set('n', '<D-v>', '"+P') -- Paste normal mode
  vim.keymap.set('v', '<D-v>', '"+P') -- Paste visual mode
  vim.keymap.set('c', '<D-v>', '<C-R>+') -- Paste command mode
  vim.keymap.set('i', '<D-v>', '<ESC>l"+Pli') -- Paste insert mode
end

-- Allow clipboard copy paste in neovim
vim.g.neovide_input_use_logo = 1
vim.api.nvim_set_keymap('', '<D-v>', '+p<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('!', '<D-v>', '<C-R>+', { noremap = true, silent = true})
vim.api.nvim_set_keymap('t', '<D-v>', '<C-R>+', { noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<D-v>', '<C-R>+', { noremap = true, silent = true})


-- NvimTree
keymap.set("n", "<D-j>", ":NvimTreeToggle<CR>")

-- Toggleterm
keymap.set("n", "<D-t>", ":ToggleTerm<CR>")


-- Gitsigns
keymap.set("n", "<D-d>", ":Gitsigns toggle_linehl<CR><BAR> :Gitsigns toggle_deleted<CR>") 

-- Telescope
keymap.set("n", "<D-f>", ":Telescope current_buffer_fuzzy_find<CR>")
keymap.set("n", "<D-Shift-f>", ":Telescope live_grep<CR>") --idk fix this future tim
