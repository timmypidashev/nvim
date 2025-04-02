return {
  "davidmh/mdx.nvim",
  lazy = false,
  config = function()
    -- Associate `.mdx` files with the Markdown filetype
    vim.filetype.add({
      extension = {
        mdx = "markdown",
      },
    })

    -- Configure formatting for `.mdx` files (example using Prettier)
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "markdown",
      callback = function()
        if vim.fn.expand("%:e") == "mdx" then
          -- Example: Set Prettier as the formatter for `.mdx` files
          vim.cmd([[setlocal formatprg=prettier\ --parser\ mdx]])
        end
      end,
    })
  end,
}

