local default_lsp = require "nvchad.configs.lspconfig"

local servers = { "lua_ls", "svelte", "ts_ls" }

-- Apply NvChad's capabilities/on_init to all servers and enable them.
-- on_attach is handled globally by NvChad via the LspAttach autocmd in defaults().
for _, server in ipairs(servers) do
  vim.lsp.config(server, {
    capabilities = default_lsp.capabilities,
    on_init = default_lsp.on_init,
  })
  vim.lsp.enable(server)
end
