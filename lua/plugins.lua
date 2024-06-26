-- Shorten common nvim commands
local cmd = vim.cmd

-- Load Packer
cmd([[packadd packer.nvim]])

-- Rerun PackerCompile everytime pluggins.lua is updated
cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

-- Initialize pluggins
return require('packer').startup(function(use)
    -- Let Packer manage itself
    use 'wbthomason/packer.nvim'

    -- Gruvbox colorscheme
    use ({
        'ellisonleao/gruvbox.nvim',
        config = function() require('plugins.gruvbox') end
    })

    -- TPipeline
    --use ({
    --    'vimpostor/vim-tpipeline',
    --    config = function() require('plugins.tpipeline') end
    --})

    -- Barbar
    use ({
        'akinsho/bufferline.nvim',
        requires = 'nvim-tree/nvim-web-devicons',
        config = function() require('plugins.bufferline') end
    })

    -- Smart Splits
    use ({
        'mrjones2014/smart-splits.nvim',
        config = function() require('plugins.smartsplits') end
    })

    -- Lualine
    use ({
        'nvim-lualine/lualine.nvim',
        requires = 'nvim-tree/nvim-web-devicons',
        config = function() require('plugins.lualine') end
    })

    -- NvimTree
    use ({
        'kyazdani42/nvim-tree.lua',
        requires = 'nvim-tree/nvim-web-devicons',
        config = function() require('plugins.nvimtree') end
    })

    -- Toggleterm
    use ({
        'akinsho/toggleterm.nvim',
        config = function() require('plugins.toggleterm') end
    })

    -- JSX PRETTY
    use ({
        'maxmellon/vim-jsx-pretty'
    })

    -- Project
    --use ({
    --    'ahmedkhalf/project.nvim',
    --    config = function() require('plugins.project') end
    --})

    -- Telescope
    --use ({
    --    'nvim-telescope/telescope.nvim',
    --    config = function() require('plugins.telescope') end
    --})

    -- Plenary
    --use 'nvim-lua/plenary.nvim'

    -- Gitsigns
    use ({
        'lewis6991/gitsigns.nvim',
        config = function() require('plugins.gitsigns') end
    })

    -- Mason
    use ({
        'williamboman/mason.nvim',
        requires = {
            'williamboman/mason-lspconfig.nvim',
            'neovim/nvim-lspconfig'
        },
        config = function() require('plugins.lspconfig') end
    })

    -- Autocompletion and Snippets
    use ({
        'hrsh7th/nvim-cmp',
       requires = {
            'hrsh7th/cmp-nvim-lsp',
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip',
            --'rafamadriz/friendly-snippets'
        },
        config = function() require('plugins.cmp') end
    })

    use 'wakatime/vim-wakatime'

    -- Colorizer
    use ({
        'norcalli/nvim-colorizer.lua',
        config = function() require('plugins.colorizer') end
    })

    -- true-zen
    use ({
      'pocco81/true-zen.nvim',
      config = function() require('plugins.zen') end
    })

    --use 'codeindulgence/vim-tig'

    -- Vim Rooter
    --use 'airblade/vim-rooter'

    -- Vimwiki
    --use 'vimwiki/vimwiki'
end)

