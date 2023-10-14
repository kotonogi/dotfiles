require("which-key").setup {}

local wk = require("which-key")


wk.register({
  --------------------------- lsp ---------------------------
  ["<leader>k"] = { "<cmd>Lspsaga hover_doc<CR>", "定義の表示" },
  ["<leader>f"] = { "<cmd>lua vim.lsp.buf.format()<CR>", "コードのフォーマット" },
  ["gh"] = { "<cmd>Lspsaga lsp_finder<CR>", "Find the symbol's definition" },
  ["gr"] = { "<cmd>Lspsaga rename<CR>", "Rename all occurrences of the hovered word for the entire file" },
  ["gd"] = { "<cmd>Lspsaga peek_definition<CR>",
    "You can edit the file containing the definition in the floating window" },
  ["gi"] = { "<cmd>lua vim.lsp.buf.implementation()<CR>", "" },
  ["gt"] = { "<cmd>lua vim.lsp.buf.type_definition()<CR>", "" },
  ["ga"] = { "<cmd>lua vim.lsp.buf.code_action()<CR>", "" },
  ["ge"] = { "<cmd>Lspsaga show_line_diagnostics<CR>", "エラー内容表示" },
  ["g]"] = { "<cmd>Lspsaga diagnostic_jump_prev<CR>", "" },
  ["g["] = { "<cmd>Lspsaga diagnostic_jump_next<CR>", "" },
  ["<leader>o"] = { "<cmd>Lspsaga outline<CR>", "toggle outline" },
  ["<leader>ci"] = { "<cmd>Lspsaga incoming_calls<CR>", "toggle outline" },
  ["<leader>co"] = { "<cmd>Lspsaga outgoing_calls<CR>", "" },

  --------------------------- neotree ---------------------------
  ["<leader>n"] = { "<cmd>:NeoTreeFloatToggle<CR>", "" },



  [""] = { "", "" },
  [""] = { "", "" },
  [""] = { "", "" },


  --------------------------- telescope ---------------------------
  ["<leader>ff"] = { "<cmd>Telescope find_files<cr>", "Find File" },
  ["<leader>fr"] = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
  ["<leader>fn"] = { "<cmd>enew<cr>", "New File" },




})
