local options = {
  formatters_by_ft = {
    lua = { "stylua" },
      go = { "goimports", "gofmt" },
      javascript = { "prettierd" },
      typescript = { "prettierd" },
      svelte = { "prettierd" },
      html = { "prettierd" },
      css = { "prettierd" },
  },

  format_on_save = {
     timeout_ms = 500,
     lsp_fallback = true,
   },
}

return options
