local status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status then
  return
end

local lspconfig = require("lspconfig")

-- Setup Mason
require("mason").setup()

-- Setup Mason-LSPConfig
mason_lspconfig.setup()

-- Setup LSP servers safely
if mason_lspconfig.setup_handlers then
  mason_lspconfig.setup_handlers({
    -- default handler for all installed servers
    function(server_name)
      lspconfig[server_name].setup({})
    end,
  })
end
