local cmp_status_ok, cmp = pcall(require, "mason")
if not cmp_status_ok then
  return
end

require("mason").setup()

mason_lspconfig = require("mason-lspconfig")
mason_lspconfig.setup({
  ensure_installed = {
    "ansiblels",
    "bashls",
    "cssls",
    "dagger",
    "dockerls",
    "gopls",
    "html",
    "jsonls",
    "sumneko_lua",
    "marksman",
    "pyright",
    "taplo",
    "terraformls",
    "tflint",
    "tsserver",
    "yamlls",
  }
})

