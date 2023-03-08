return {
  "nvim-treesitter/nvim-treesitter",
  version = false, -- last release is way too old and doesn't work on Windows
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },
  opt = {
    ensure_installed = {
      "vim",
      "help",
      "html",
      "lua",
      "python",
      "regex",
      "javascript",
      "json",
      "bash",
      "zsh",
      "rust",
      "c",
      "cpp",
    },
  },
}
