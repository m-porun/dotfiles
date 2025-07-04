require("lazy_setup")
require('keymaps')

-- 基本的な表示設定
vim.opt.number = true           -- 行番号を表示
vim.opt.relativenumber = false  -- 相対行番号を表示
vim.opt.cursorline = true       -- カーソル行をハイライト
vim.opt.termguicolors = true    -- 24ビットカラーを使用
vim.opt.warp = false            -- 折り返しをなくす

-- インデントとタブの設定
vim.opt.expandtab = true        -- タブをスペースに変換
vim.opt.tabstop = 2             -- タブ幅を2スペースに設定
vim.opt.shiftwidth = 2          -- インデント幅を2スペースに設定
vim.opt.smartindent = true      -- スマートインデントを有効化

-- 検索設定
vim.opt.ignorecase = true       -- 検索時に大文字小文字を区別しない
vim.opt.smartcase = true        -- 検索パターンに大文字が含まれる場合は区別する
vim.opt.hlsearch = true         -- 検索結果をハイライト

-- ファイル関連の設定
vim.opt.backup = false          -- バックアップファイルを作成しない
vim.opt.swapfile = false        -- スワップファイルを作成しない
vim.opt.undofile = true         -- 永続的なundoの履歴を有効化


-- 診断表示の設定
-- LSP（言語サーバープロトコル）からの診断情報（エラー、警告など）の表示方法を設定
vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = false,
  update_in_insert = false,

-- 代替方法として浮動ウィンドウに表示
  float = {
    show_header = true,
    source = 'always',
    border = 'rounded',
    format = function(diagnostic)
      return string.format(
        "%s (%s) [%s]",
        diagnostic.message,
        diagnostic.source,
        diagnostic.code or diagnostic.user_data.lsp.code
      )
    end,
  },
})
