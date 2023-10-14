
  require('mason').setup {
  ui = {
    border = 'single',
    icons = {
      package_installed = '✓',
      package_pending = '➜',
      package_uninstalled = '✗',
    },
  },
}

  require("mason-lspconfig").setup()

  require("mason-lspconfig").setup_handlers{ function(server)
    local opt = {
      capabilities = require("cmp_nvim_lsp").default_capabilities(
        vim.lsp.protocol.make_client_capabilities()
      )
    }
    require("lspconfig")[server].setup(opt)

    if server_name == 'pyright' then
      opt.settings = {
        python = {
          venvPath = ".",
          pythonPath = "./.venv/bin/python",
          analysis = {
            extraPaths = { "." }
          }
        }
      }
    end
    require('lspconfig')[server_name].setup(opts)
  end }
