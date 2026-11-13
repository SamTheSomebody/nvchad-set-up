vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = '*.ts,*.tsx,*.js,*.jsx',
  callback = function()
    vim.lsp.buf.format()
  end,
})
