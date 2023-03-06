-- Nvim-tree configuration
require("nvim-tree").setup({
    sort_by = "case_sensitive",
    disable_netrw = true,
    hijack_netrw = true,
    hijack_cursor = false,
    update_cwd = true,
    view = {
        hide_root_folder = true,
        auto_resize = true
    },
    filters = {
        dotfiles = true,
        custom = {},
    },
    renderer = {
       highlight_git = true,
    },
})

