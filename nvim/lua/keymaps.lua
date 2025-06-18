local builtin = require("telescope.builtin")
local lib = require("nvim-tree.lib")

-- 行をクリップボードにコピー
vim.keymap.set('n', '<leader>y', '"+yy', { desc = 'Copy line to clipboard' })
vim.keymap.set('v', '<leader>y', '"+y', { desc = 'Copy selection to clipboard' })

-- 行をクリップボードにコピーし、選択範囲を切り取る
vim.keymap.set('n', '<leader>d', '"+dd', { desc = 'Cut line to clipboard' })
vim.keymap.set('v', '<leader>d', '"+d', { desc = 'Cut selection to clipboard' })

vim.keymap.set('n', '<leader>o', '<CMD>Oil --float<CR>', { desc = 'Open Oil file explorer' })

-- Telescopeのキーマップ
vim.keymap.set('n', '<leader>ff', function() local root = nvim_tree_lib.get_root_dir() telescope.find_files({ cwd = root }) end, { desc = 'nvim-treeルートからファイル検索' })
vim.keymap.set('n', '<leader>fg', function() builtin.live_grep() end, { desc = 'ファイル全体の文字列' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = '[ ] Find existing buffers' })
