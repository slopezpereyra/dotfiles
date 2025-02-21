
-- disable netrw at the very start of your init.lua
-- This is required by nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git", "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup(
    {
        { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
        'pangloss/vim-javascript',
	{ 
	    "danymat/neogen", 
	    config = true,
	    -- Uncomment next line if you want to follow only stable versions
	    -- version = "*" 
	},
        'HerringtonDarkholme/yats.vim',
    {
      "hardhackerlabs/theme-vim",
      name = "hardhacker",
      lazy = false,
      priority = 1000,
      config = function()
        vim.g.hardhacker_hide_tilde = 1
        vim.g.hardhacker_keyword_italic = 1
        -- custom highlights
        vim.g.hardhacker_custom_highlights = {}
        vim.cmd("colorscheme hardhacker")
      end,
    },
        'MaxMEllon/vim-jsx-pretty',
        'HiPhish/rainbow-delimiters.nvim',
        'shaunsingh/nord.nvim',
        { 'projekt0n/github-nvim-theme',     name = 'github-theme' },
        'rktjmp/lush.nvim',
        'rose-pine/neovim',
        "preservim/vim-pencil",
        'marko-cerovac/material.nvim',
        'nvim-tree/nvim-tree.lua',
        'ThePrimeagen/harpoon',
        'lewis6991/gitsigns.nvim',
        'simrat39/symbols-outline.nvim',
        'junegunn/goyo.vim',
        'onsails/lspkind.nvim',
        'hrsh7th/cmp-nvim-lsp',
        'ray-x/lsp_signature.nvim',
        'hrsh7th/nvim-cmp',
        'SirVer/ultisnips',
        'honza/vim-snippets',
        'lervag/vimtex',
        { 'KeitaNakamura/tex-conceal.vim' },
        'dracula/vim',
        'quangnguyen30192/cmp-nvim-ultisnips',
        'kylechui/nvim-surround',
        'kyazdani42/nvim-web-devicons',
        'jalvesaq/Nvim-R',
        'ncm2/ncm2',
        'roxma/nvim-yarp',
        'gaalcaras/ncm-R',
        'preservim/nerdtree',
        'JuliaEditorSupport/julia-vim',
        'hrsh7th/cmp-nvim-lsp',
        'Vigemus/iron.nvim',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'hrsh7th/nvim-cmp',
        'kdheepak/cmp-latex-symbols',
        'quangnguyen30192/cmp-nvim-ultisnips',
        'williamboman/mason.nvim',
        'lmburns/kimbox',
        'williamboman/mason-lspconfig.nvim',
        'mfussenegger/nvim-lint',
        "rshkarin/mason-nvim-lint",
        {
            'nvim-lualine/lualine.nvim',
            dependencies = { 'nvim-tree/nvim-web-devicons' }
        },
        'neovim/nvim-lspconfig',
        {
            'windwp/nvim-autopairs',
            event = "InsertEnter",
            config = true
            -- use opts = {} for passing setup options
            -- this is equalent to setup({}) function
        },
        'sainnhe/gruvbox-material',
        'folke/tokyonight.nvim',
        {
            'mrcjkb/haskell-tools.nvim',
            version = '^3', -- Recommended
            ft = { 'haskell', 'lhaskell', 'cabal', 'cabalproject' },
        },
        -- install without yarn or npm
        {
            "iamcco/markdown-preview.nvim",
            cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
            ft = { "markdown" },
            build = function() vim.fn["mkdp#util#install"]() end,
        },
        {
            'nvim-telescope/telescope.nvim',
            tag = '0.1.6',
            -- or                              , branch = '0.1.x',
            dependencies = { 'nvim-lua/plenary.nvim' }
        },
        {
            'nvim-java/nvim-java',
            dependencies = {
                'nvim-java/lua-async-await',
                'nvim-java/nvim-java-core',
                'nvim-java/nvim-java-test',
                'nvim-java/nvim-java-dap',
                'MunifTanjim/nui.nvim',
                'mfussenegger/nvim-dap',
            },
        },
        "lukas-reineke/indent-blankline.nvim"
    }
)

require("mason").setup()
require("mason-lspconfig").setup()

local lspconfig = require("lspconfig")
lspconfig.clangd.setup({})
lspconfig.ts_ls.setup({})
lspconfig.gopls.setup({})
lspconfig.lua_ls.setup({})
lspconfig.r_language_server.setup({})
lspconfig.pyright.setup({
    init_options = { preferences = { disableSuggestions = true, } }
})


require("mason-nvim-lint").setup()
require("defaults")
require("lsp")
require("ts")
require("latex")
require("NT")
require("nvim-surround").setup()
require("nvim-autopairs").setup {}
require("icons")
require('ll')
require('drac')
require('gruvbox')
require('theme_switch')
require('julia_config')
require('tokyo')
require('remaps')
require('telescope')
require('java').setup()
require('gitsigns').setup()
require("symbols-outline").setup()
require("harpoon").setup({ ... })
require('lspconfig').jdtls.setup({})
require('nord_config')
require("material_config")
require("tree_config")
require("rainbows")
require("treesitter")
require('lsp')
require("linters")
require("indentlines")
require("autocommands")
require("generalconfig")




