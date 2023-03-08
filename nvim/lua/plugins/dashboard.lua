local function pad(config)
  local height = api.nvim_win_get_height(0)
  local center = math.ceil(height / 2)
  local dbc = match.ceil((#config.center + #config.center - 1 + #config.header + #config.footer) / 2)
  for i = 1, center - dbc do
    table.insert(config.header, 1, "")
  end
end

return {
  {

    "glepnir/dashboard-nvim",
    event = "VimEnter",
    config = function()
      require("dashboard").setup({
        theme = "doom",
        config = {
          header = {
            "                                                    ",
            "                                                    ",
            "                                                    ",
            " ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
            " ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
            " ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
            " ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
            " ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
            " ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
            "                                                    ",
            "                                                    ",
            "                                                    ",
          },
          week_header = { enable = true },
          center = {
            {
              icon = " ",
              desc = "Find File",
              key = "ff",
              action = "require('telescope.builtin').find_files({ hidden = true, no_ignore=true, cwd = '$HOME' })",
            },
            {
              icon = " ",
              desc = "Recent Files",
              key = "rf",
              action = "Telescope oldfiles",
            },
            {
              icon = " ",
              desc = "Find Text",
              key = "ft",
              action = "Telescope live_grep",
            },
            {
              icon = " ",
              desc = "Config",
              key = "fc",
              action = "e $MYVIMRC",
            },
            {
              icon = " ",
              desc = "Restore Session",
              key = "fs",
              action = ":lua require('persistence').load()<cr>",
            },
            {
              icon = "󰒲 ",
              desc = "Lazy",
              key = "ol",
              action = "Lazy",
            },
            {
              icon = " ",
              desc = "Quit",
              key = "qq",
              action = "qa",
            },
          },
        },
        footer = {},
      })
    end,
    dependencies = { { "nvim-tree/nvim-web-devicons" } },
  },
}
