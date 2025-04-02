-- Shorten common vim commands
local opt = vim.o
local glob = vim.g
local cmd = vim.cmd

-- Tabs!!!
opt.tabstop		        = 2		    -- The width of a TAB is set to 4
opt.expandtab		    = true		-- Indents will have a width of 4
opt.softtabstop		    = 2    -- The width of tab when pressing enter or backspace
opt.shiftwidth		    = 2		    -- Indents will have a width of 4
opt.autoindent          = true      -- Automatically indent

-- Numberline
opt.number		        = true		-- Show the numberline
opt.termguicolors       = true      -- Still don't know why this is here...

-- Statusline
opt.laststatus          = 3         -- Global statuslines

-- Misc
opt.wrap              = false      -- Do not wrap a line of text 

-- Gui configs
if glob.neovide then
    vim.opt.guifont = { "ComicCode Nerd Font", ":h16" }     -- Font
    vim.g.neovide_scale_factor = 1.0                     -- Scaling
    vim.g.neovide_scroll_animation_length = 0.3          -- Scroll

end
