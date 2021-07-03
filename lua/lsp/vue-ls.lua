
require('lspconfig').vuels.setup {
    cmd = {DATA_PATH .. "/lspinstall/vue/node_modules/.bin/vls", "--stdio"},
    init_options = {
        config = {
            vetur = {
                ignoreProjectWarning = true
            }
        }
    },
    on_attach = require'lsp'.common_on_attach,
    root_dir = require('lspconfig').util.root_pattern(".git", ".")
}
