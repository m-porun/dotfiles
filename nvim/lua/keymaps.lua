local builtin = require("telescope.builtin")
local telescope = require("telescope") -- Telescopeをロード
local nvim_tree_lib = require("nvim-tree.lib") -- nvim-tree.lib をロード

-- 行をクリップボードにコピー
vim.keymap.set('n', '<leader>y', '"+yy', { desc = 'Copy line to clipboard' })
vim.keymap.set('v', '<leader>y', '"+y', { desc = 'Copy selection to clipboard' })

-- 行をクリップボードにコピーし、選択範囲を切り取る
vim.keymap.set('n', '<leader>d', '"+dd', { desc = 'Cut line to clipboard' })
vim.keymap.set('v', '<leader>d', '"+d', { desc = 'Cut selection to clipboard' })

vim.keymap.set('n', '<leader>o', '<CMD>Oil --float<CR>', { desc = 'Open Oil file explorer' })

-- Telescopeのキーマップ
vim.keymap.set('n', '<leader>ff', function()
  builtin.find_files({
    cwd = vim.fn.getcwd(),
    file_ignore_patterns = {
      "%.swp$",     -- swapファイル
      "%.tmp$",     -- 一時ファイル
      "~$",         -- バックアップファイル
      "^tmp/",      -- プロジェクト内の tmp ディレクトリ
      "^node_modules/",
      "%.DS_Store$", -- macOS の不要ファイル
    }
}) end, { desc = 'プロジェクトルートからファイル検索' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
