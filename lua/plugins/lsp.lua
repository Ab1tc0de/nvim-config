require('mason').setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require('mason-lspconfig').setup({
    -- A list of servers to automatically install if they're not already installed
    ensure_installed = { 'lua_ls','clangd','bashls','html','pyright','lemminx','vtsls','jsonls','cssls','markdown_oxide' },
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()


local signs = {
   { name = "DiagnosticSignError", text = "" },
   { name = "DiagnosticSignWarn", text = "" },
   { name = "DiagnosticSignHint", text = "" },
   { name = "DiagnosticSignInfo", text = "" },
 }
for _, sign in ipairs(signs) do
    vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
end


require("lspconfig").lua_ls.setup {
  capabilities = capabilities,
}
require("lspconfig").clangd.setup {
  capabilities = capabilities,
}
require("lspconfig").bashls.setup{
  capabilities = capabilities,
}
require("lspconfig").cssls.setup{
  capabilities = capabilities,
}
require("lspconfig").html.setup{
  capabilities = capabilities,
}
require("lspconfig").jsonls.setup{
  capabilities = capabilities,
}
require("lspconfig").vtsls.setup{
  capabilities = capabilities,
}
require("lspconfig").pyright.setup{
  capabilities = capabilities,
}
require("lspconfig").lemminx.setup{
  capabilities = capabilities,
}
require("lspconfig").markdown_oxide.setup{
  capabilities = capabilities,
}
