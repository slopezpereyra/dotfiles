
vim.api.nvim_set_keymap('n', '<Leader>o', '<Cmd>SymbolsOutline<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>g', '<Cmd>Goyo<CR>', { noremap = true, silent = true })
vim.opt.tabstop = 2      -- Number of spaces a tab counts for
vim.opt.shiftwidth = 2   -- Number of spaces for auto-indent
vim.opt.colorcolumn = "80"

vim.opt.autoindent = true
vim.opt.smartindent = true
		
--vim.api.nvim_exec([[autocmd VimEnter * NERDTree | wincmd p]], false)
vim.cmd('colorscheme gruvbox-material')
