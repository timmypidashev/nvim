return {
  'akinsho/toggleterm.nvim',
  version = "*",
  opts = {
    close_on_exit = true, -- close the terminal window when the process exits
    start_in_insert = true, -- Start in insert mode for optimal devx
    direction = 'float',
    float_opts = {
      border = 'curved',
    },
  },
  config = true,
}
