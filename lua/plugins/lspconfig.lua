require("mason").setup({
    ui = {
        border = 'rounded',
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

-- Auto install everything I need
require("mason-lspconfig").setup({
    ensure_installed = { 
        -- Lua
        "lua_ls"
    }
})

-- Autocompletion capabilities
local capabilities = require('cmp_nvim_lsp').default_capabilities()


-- LSP Keybinds
local on_attach = function(_, _)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action {})

    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
    vim.keymap.set('n', 'gi', vim.lsp.bug.implementation, {})
    vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
    vim.keymap.set(vim.lsp.buf.hover, 'K', 'n', {})
end

-- LSP configs
--
-- Lua
require("lspconfig").lua_ls.setup {
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
