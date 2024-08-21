return {
  "nvim-tree/nvim-tree.lua",
  opts = {
    sort_by = "case_sensitive",
    disable_netrw = true,
    hijack_netrw = true,
    hijack_cursor = false,
    update_cwd = true,
    filters = {
      dotfiles = true,
      custom = {},
    },
    renderer = {
      highlight_git = true,
      root_folder_label = false,
      icons = {
        show = {
          file = false,
          folder = false,
          folder_arrow = false,
          git = false,
        },
      },
    },
    view = {
      signcolumn = "no",
    },
  },
  config = function(_, opts)
    require("nvim-tree").setup(opts)
  end,
}
