local base = require("plugins.configs.lspconfig")
local on_attach = base.on_attach
local capabilities = base.capabilities

local lspconfig = require("lspconfig")

lspconfig.clangd.setup {
  on_attach = function(client, bufnr)
    client.server_capabilities.signatureHelpProvider = false
    on_attach(client, bufnr)
  end,
  filetypes = {'c', 'cpp', 'cc', 'mpp', 'ixx'},
  init_options = {
        -- @see https://clangd.llvm.org/extensions#compilation-commands
        -- Controls the flags used when no specific compile command is found.
        -- The compile command will be approximately clang $FILE $fallbackFlags in this case.
        fallbackFlags = {'-std=c++17', '-I../../build/include', '-I/opt/homebrew/include'},
  },
  capabilities = capabilities,
}
