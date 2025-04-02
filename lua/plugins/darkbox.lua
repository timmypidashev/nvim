return {
  "timmypidashev/darkbox.nvim",
  lazy = false,
  config = function()
    require("darkbox").setup({
    })
    vim.cmd("colorscheme darkbox")
  end
}
