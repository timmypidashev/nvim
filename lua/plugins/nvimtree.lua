-- Nvim-tree configuration
require("nvim-tree").setup({
    sort_by = "case_sensitive",
    disable_netrw = true,
    hijack_netrw = true,
    
    renderer = {
       highlight_git = true,
    },
})

