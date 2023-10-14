key = vim.keymap

-------------------------------- neo-tree  --------------------------------
  key.set("n", "<leader>k", "<cmd>Lspsaga hover_doc<CR>")
  key.set("n", "<leader>f", "<cmd>lua vim.lsp.buf.format()<CR>")
  key.set("n", "gh", "<cmd>Lspsaga lsp_finder<CR>")
  key.set("n", "gr", "<cmd>Lspsaga rename<CR>")
  key.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>")
  key.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>")
  key.set("n", "gt", "<cmd>lua vim.lsp.buf.type_definition()<CR>")
  key.set("n", "ga", "<cmd>lua vim.lsp.buf.code_action()<CR>")
  key.set("n", "ge", "<cmd>Lspsaga show_line_diagnostics<CR>")
  key.set("n", "g]", "<cmd>Lspsaga diagnostic_jump_prev<CR>")
  key.set("n", "g[", "<cmd>Lspsaga diagnostic_jump_next<CR>")
  key.set("n", "<leader>o", "<cmd>Lspsaga outline<CR>")
  key.set("n", "<leader>ci", "<cmd>Lspsaga incoming_calls<CR>")
  key.set("n", "<leader>co", "<cmd>Lspsaga outgoing_calls<CR>")


-------------------------------- neo-tree  --------------------------------
key.set("n", "<leader>n", "<cmd>:NeoTreeFloatToggle<CR>")

-------------------------------- telescope --------------------------------
key.set("n",  "<leader>ff", "<cmd>Telescope find_files<cr>")
key.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>")
key.set("n", "<leader>fn", "<cmd>enew<cr>")
key.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")
