-- <Leader>というプレフィックスキーにスペースを使用する
vim.g.mapleader = ' '

vim.keymap.set('i', 'jj', '<ESC>')

-- カーソル下の単語を、置換後の文字列の入力を待つ状態にする
vim.keymap.set('n', '<Leader>re', ':%s;<<C-R><C-W>>;g<Left><Left>;', {noremap = true})
--
-- Escを2回押すとハイライトを消す
vim.keymap.set('n', '<Esc><Esc>', ':nohlsearch<CR>', {noremap = true})
--
-- スペース + . でvimrcを開く
vim.keymap.set('n', '<Leader>.', ':new ~/.config/nvim/init.lua<CR>', {noremap = true})
-- スペース + w で保存
vim.keymap.set('n', '<Leader>w', ':w<CR>', {noremap = true})

-- Ctrl + j と Ctrl + k で 段落の前後に移動
vim.keymap.set('n', '<C-j>', '}', {noremap = true})
vim.keymap.set('n', '<C-k>', '{', {noremap = true})

-- @tで新しいタブでターミナルを開く
vim.keymap.set('n', '@t', ':tabnew|term<CR>', {noremap = true})

-- terminal esc
vim.keymap.set('t', 'jj', "<C-\\><C-n>", {noremap = true})

