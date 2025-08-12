local lsp = require('lsp-zero')

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({buffer = bufnr})
end)

lsp.configure('ruby_ls', {
    cmd = { 'bundle', 'exec', 'ruby-lsp' },
    root_dir = require('lspconfig.util').root_pattern('Gemfile', '.git'),
    init_options = {
        formatter = 'rubocop',
        linters = { 'rubocop' },
    },
})
