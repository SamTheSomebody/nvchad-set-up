local lspconfig = require "lspconfig"
local default_lsp = require "nvchad.configs.lspconfig"

local servers = { "lua_ls", "svelte", "ts_ls", }

local function on_attach(client, bufnr)
  default_lsp.on_attach(client, bufnr)
end

for _, server in ipairs(servers) do
  local opts = {
    on_attach = on_attach,
    capabilities = default_lsp.capabilities,
  }
  lspconfig[server].setup(opts)
end
