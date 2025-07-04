return {
  -- Telescopeプラグインの設定
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons', -- ファイルアイコン表示に必要
    }
  },

  -- nvim-treeプラグインの設定
  {
    'nvim-tree/nvim-tree.lua',
    version = '*',
    lazy = false, -- nvim-treeは通常、起動時にロードされるようにします
    dependencies = {
      'nvim-tree/nvim-web-devicons', -- ファイルアイコン表示に必要
    },
    config = function()
      -- nvim-treeの全体設定のみを記述
      require('nvim-tree').setup {
        sync_root_with_cwd = true,
        update_focused_file = {
            enable = true,
            update_root = true,
        },
        view = {
            width = 30,
        },
        renderer = {
            group_empty = true,
        },
        filters = {
            dotfiles = true,
        },
        diagnostics = {
            enable = true,
        }
      }
    end,
  },
}
