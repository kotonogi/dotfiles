  require('toggleterm').setup {
    -- ターミナルウィンドウのサイズを設定
    size = 20,

    -- ターミナルウィンドウの表示位置を設定
    -- open_mapping = [[<c-\>]],

    -- ターミナルウィンドウが現在のウィンドウを遮らないようにする
    hide_numbers = true,

    -- ターミナルウィンドウを開くときにカーソルを移動させる
    start_in_insert = true,

    -- ウィンドウを閉じる際にターミナルバッファを保持
    persist_size = true,

    -- ターミナルウィンドウの表示方向
    direction = 'horizontal',

    -- デフォルトシェルをfishに設定
    cmd = "fish",

    -- ターミナルウィンドウをフロート表示する
    float_opts = {
      border = 'curved',
      winblend = 3,
      highlights = {
        border = "Normal",
        background = "Normal",
      }
    }
  }
  local Terminal = require('toggleterm.terminal').Terminal

  -- 関数を作成してターミナルを開閉する
  function Open_toggleterm()
    local terminal = Terminal:new({ cmd = "fish", hidden = true })
    terminal:toggle()
  end

  -- タブでToggletermを開く関数
  function Open_toggleterm_in_tab()
    vim.cmd("tabnew")
    local terminal = Terminal:new({ cmd = "fish", size = 100 })
    terminal:toggle()
  end

  -- ノーマルモードとインサートモードでターミナルを開閉するキーマップを設定
  vim.api.nvim_set_keymap("n", "<leader>tt", "<cmd>lua Open_toggleterm()<CR>", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("i", "<leader>tt", "<cmd>lua Open_toggleterm()<CR>", { noremap = true, silent = true })

  -- キーマップを設定してタブでToggletermを開く
  vim.api.nvim_set_keymap("n", "<leader>tn", "<cmd> lua Open_toggleterm_in_tab() <CR>", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("i", "<leader>tn", "<cmd>lua Open_toggleterm_in_tab()<CR>", { noremap = true, silent = true })

  -- lazygit
  local lazygit = Terminal:new({
    cmd = "lazygit",
    dir = "git_dir",
    direction = "float",
    float_opts = {
      border = "double",
    },
    -- function to run on opening the terminal
    on_open = function(term)
      vim.cmd("startinsert!")
      vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", {noremap = true, silent = true})
    end,
    -- function to run on closing the terminal
    on_close = function(term)
      vim.cmd("startinsert!")
    end,
  })

  function _lazygit_toggle()
    lazygit:toggle()
  end

  vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})
