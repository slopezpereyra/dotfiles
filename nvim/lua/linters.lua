-- Set linters
require('lint').linters_by_ft = {
  python = {'ruff'}
}

-- Set running linters on buffer save
vim.api.nvim_create_autocmd({"BufWritePost"}, {
  callback = function()
    require("lint").try_lint()
  end,
})

