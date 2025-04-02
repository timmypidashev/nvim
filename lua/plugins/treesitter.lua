return {
  -- Treesitter Plugin
  {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',  -- Ensure parsers are installed/updated
    config = function()
      require'nvim-treesitter.configs'.setup {
        highlight = {
          enable = true,  -- Enable Tree-sitter-based syntax highlighting
          additional_vim_regex_highlighting = false,  -- Disable additional vim regex highlighting (improves performance)
        },
      }
    end,
  }
}
