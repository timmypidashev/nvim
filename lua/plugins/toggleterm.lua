require("toggleterm").setup{
    close_on_exit = false, -- close the terminal window when the process exits
    start_in_insert = true, -- Start in insert mode for optimal devx
    direction = 'float',
    float_opts = {
        border = 'curved',
    },
    close_on_exit = true,
}
