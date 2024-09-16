vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.tsx", "*.ts", "*.jsx", "*.js" },
  command = "silent! EslintFixAll",
  group = vim.api.nvim_create_augroup("JSLinting", {}),
})

vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "html" },
  callback = function()
    vim.b.autoformat = false
  end,
})
