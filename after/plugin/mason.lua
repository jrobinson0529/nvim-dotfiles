require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "solargraph" },
    automatic_installation = true,
})

-- This is the missing piece - it bridges Mason with lsp-zero
require("mason-lspconfig").setup_handlers({
    function(server_name)
        require("lspconfig")[server_name].setup({})
    end,
})
