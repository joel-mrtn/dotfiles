local lsp = require('lsp-zero')

lsp.on_attach(function(_, bufnr)
    lsp.default_keymaps({buffer = bufnr})
end)

require('neodev').setup()

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {'lua_ls', 'pyright', 'rust_analyzer', 'tsserver'},
    handlers = {
        lsp.default_setup,
    },
})

require('lspconfig').lua_ls.setup {
  settings = {
    Lua = {
      workspace = {
        checkThirdParty = false,
      },
    },
  },
}

require('fidget').setup({
    window = {
        blend = 0,
    },
})

lsp.setup()

-- additional rust config
local rust_lsp = lsp.build_options('rust_analyzer', {})
require('rust-tools').setup({server = rust_lsp})
