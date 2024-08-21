-- Define some nice li-el helpers
local keymap = vim.keymap

-- Keymaps
-- "MODE" "KEYMAP" "COMMAND" "CR IS ENTER KEY"
--

-- Source neovim config
keymap.set("n", "<C-r>", ":source<CR>")

-- Save work
keymap.set("i", "<C-s>", ":w<CR>")

-- Undo change
keymap.set("n", "<D-u", ":undo<CR>")

-- NvimTree
keymap.set("n", "<C-j>", ":NvimTreeFocus<CR>")
keymap.set("n", "<C-n>", ":NvimTreeClose<CR>")

-- Toggleterm
keymap.set("n", "<C-t>", ":ToggleTerm<CR>")

-- Telescope neovim-project commands
keymap.set("n", "<C-p>", ":Telescope neovim-project discover<CR>", { desc = "Discover projects" })
keymap.set("n", "<C-h>", ":Telescope neovim-project history<CR>", { desc = "Recent projects" })

-- Telescope
keymap.set("n", "<C-f>", ":Telescope current_buffer_fuzzy_find<CR>")
keymap.set("n", "<C-F>", ":Telescope live_grep<CR>")
