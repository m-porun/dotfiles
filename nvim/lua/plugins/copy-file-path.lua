return {
  "h3pei/copy-file-path.nvim",
  lazy = true,
  cmd = { "CopyFilePath" },
  keys = {
    { "<leader>cp", "<cmd>CopyFilePath<CR>", desc = "絶対パスをコピー" },
    { "<leader>cr", "<cmd>CopyFilePath --relative<CR>", desc = "相対パスをコピー" },
    { "<leader>cf", "<cmd>CopyFilePath --filename<CR>", desc = "ファイル名をコピー" },
    { "<leader>cd", "<cmd>CopyFilePath --directory<CR>", desc = "ディレクトリをコピー" },
  },
  config = function()
    require("copy-file-path").setup()
  end
}

