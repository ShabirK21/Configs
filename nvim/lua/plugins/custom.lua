return {
  -- Clipboard manager
  {
    "AckslD/nvim-neoclip.lua",
    event = "VeryLazy",
    dependencies = { "nvim-telescope/telescope.nvim" },
    config = function()
      require("neoclip").setup()
    end,
  },
  -- Terminal
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    event = "VeryLazy",
    config = function()
      require("toggleterm").setup({
        open_mapping = [[<c-\>]],
        shade_terminals = true,
        size = 10,
        shade_filetypes = {},
        direction = "horizontal",
      })
    end,
  },

  -- Live server
  { "manzeloth/live-server", event = "VeryLazy" },

  -- Bufdelete
  { "famiu/bufdelete.nvim" },

  -- Python debug
  { "mfussenegger/nvim-dap", event = "VeryLazy", lazy = true },
  {
    "mfussenegger/nvim-dap-python",
    event = "VeryLazy",
    lazy = true,
  },
  {
    "rcarriga/nvim-dap-ui",
    event = "VeryLazy",
    lazy = true,
    dependencies = { "mfussenegger/nvim-dap" },
    opt = {
      vim.fn.sign_define("DapBreakpoint", { text = "🟥", texthl = "", linehl = "", numhl = "" }),
      vim.fn.sign_define("DapStopped", { text = "▶️", texthl = "", linehl = "", numhl = "" }),
    },
  },
  { "theHamsta/nvim-dap-virtual-text", event = "VeryLazy", lazy = true },
  {
    "folke/neodev.nvim",
    opts = { experimental = { pathStrict = true }, library = { plugins = { "nvim-dap-ui" }, types = true } },
  },
}
