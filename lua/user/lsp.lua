local cmp_status_ok, cmp = pcall(require, "mason")
if not cmp_status_ok then
  return
end

require("mason").setup()
require("mason-lspconfig").setup()
require("mason-lspconfig").setup_handlers {
  function (server_name)
    require("lspconfig")[server_name].setup {}
  end
}

