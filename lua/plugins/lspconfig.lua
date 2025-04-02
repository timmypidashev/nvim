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
        "lua_ls",
        "clangd",
        "tsserver",
        "quick_lint_js",
        "html",
        "cssls"
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

      require("mason").setup()
      require("mason-lspconfig").setup()

      local lspconfig = require("lspconfig")

      lspconfig.lua_ls.setup {
        on_attach = on_attach,
        capabilities = capabilities,
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
          },
        },
      }

      lspconfig.tsserver.setup {
        on_attach = on_attach,
        capabilities = capabilities,
      }

      lspconfig.clangd.setup {
        on_attach = on_attach,
        capabilities = capabilities,
      }
    end,
  },
}

