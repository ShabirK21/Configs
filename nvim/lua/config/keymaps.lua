-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keyMap = vim.keymap.set

-- Undo
keyMap("i", "<C-z>", "<cmd>undo<cr>")

-- Close buffer
keyMap("n", "<C-x>", "<cmd>Bdelete<CR>")
keyMap("i", "<C-x>", "<cmd>Bdelete<CR>")

-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", function()
  builtin.find_files({ hidden = true, no_ignore = true, cwd = vim.fn.expand("$HOME") })
end)
vim.keymap.set("n", "<leader>fd", builtin.find_files, {})
vim.keymap.set("n", "<leader>fs", function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

-- Bufferline
keyMap("n", "<leader>[", "<cmd>BufferLineCyclePrev<cr>")
keyMap("n", "<leader>]", "<cmd>BufferLineCycleNext<cr>")

-- Toggleterm
function _G.set_terminal_keymaps()
  local opts = { buffer = 0 }
  vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
  vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
  vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
  vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")

-- Debug
keyMap("n", "<leader>cb", "<cmd>lua require'dap'.toggle_breakpoint()<CR>")
keyMap("n", "<leader>cs", "<cmd>lua require'dap'.step_into()<CR>")
keyMap("n", "<leader>cc", "<cmd>lua require'dap'.continue()<CR>")
