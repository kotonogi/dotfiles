local null_ls = require("null-ls")

local sources = {}

------------------ python ------------------
local vertualenv_path = ".venv/bin/"

table.insert(sources, null_ls.builtins.diagnostics.pyproject_flake8.with({ prefer_local = vertualenv_path }))
table.insert(sources, null_ls.builtins.formatting.black.with({ prefer_local = vertualenv_path }))
table.insert(sources, null_ls.builtins.formatting.isort.with({ prefer_local = vertualenv_path }))


------------------ lua ------------------
table.insert(sources, null_ls.builtins.formatting.stylua)

null_ls.setup({
  sources = sources,
})
