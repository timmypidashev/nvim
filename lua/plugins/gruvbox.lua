return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
      require("gruvbox").setup({
        overrides = {
          Normal = { bg = "#000000" },
          NormalFloat = { bg = "#000000" },
        },
        palette_overrides = {
          dark0 = "#000000",
        },
      })
      
      -- Set the colorscheme
      vim.cmd("colorscheme gruvbox")
    end,
  },
}
