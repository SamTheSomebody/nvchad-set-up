local lspconfig = require "lspconfig"
local util = require "lspconfig.util"
local default_lsp = require "nvchad.configs.lspconfig"

local servers = { "lua_ls", "svelte", "tailwindcss", "ts_ls", "gopls" }

for _, server in ipairs(servers) do
  local opts = {
    on_attach = default_lsp.on_attach,
    capabilities = default_lsp.capabilities,
  }

  if server == "gopls" then
    opts.cmd = { "gopls" }
    opts.filetypes = { "go", "gomod", "gowork", "gotmpl" }
    opts.root_dir = util.root_pattern("go.work", "go.mod", ".git")
    opts.settings = {
      gopls = {
        completeUnimported = true,
        usePlaceholders = true,
        analyses = {
          unusedparams = true,
        },
        staticcheck = true,
      },
    }
  end

  lspconfig[server].setup(opts)
end

