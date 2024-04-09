local status, true_zen = pcall(require, "true-zen")
if not status then
  return
end

true_zen.setup({
  modes = {
    ataraxis = {
      callbacks = {
        open_pre = function()
          require("lualine").hide()
          vim.opt.wrap = true
          vim.opt.tabstop = 4
          vim.opt.softtabstop = 4
          vim.opt.shiftwidth = 4
          vim.opt.autoindent = false
        end,
        close_pre = function()
          require("lualine").hide({ unhide = true })
        end,
      },
    },
  },
})
