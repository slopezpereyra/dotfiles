
vim.api.nvim_create_autocmd("FileType", {
  pattern = {"lua", "json", "yaml", "javascript", "typescript", "python", "julia"},
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.expandtab = true
  end
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = { "c", "cpp", "objc", "objc++" },
    callback = function()
        vim.bo.shiftwidth = 2
        vim.bo.softtabstop = 2
        vim.bo.expandtab = true
    end,
})
