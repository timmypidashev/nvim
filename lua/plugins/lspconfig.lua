return {
  {
    "williamboman/mason.nvim",
    priority = 1000,
    opts = {
      ui = {
        border = 'rounded',
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
        }
      }
    },
    config = true,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "williamboman/mason.nvim",
    },
    opts = {
      ensure_installed = {
        "ts_ls"
      }
    },
    config = true,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local on_attach = function(_, _)
        -- no keybinds yet
      end
      
      -- Only configure ts_ls
      require("lspconfig").ts_ls.setup {
        on_attach = on_attach,
        capabilities = capabilities,
      }
    end,
  },
}
