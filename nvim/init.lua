vim.g.mapleader = " "
require("wired.settings")
require("wired.lazy")


vim.keymap.set('n', '<leader>e', '<Cmd>Neotree toggle<CR>')
vim.keymap.set('n', '<leader>r', '<Cmd>Neotree reveal<CR>')
vim.keymap.set('n', '<leader>f', '<Cmd>Neotree focus<CR>')
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-l>', '<C-w>l')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<Space>/', ':bot new | resize 10 | terminal<CR>', opts)

vim.keymap.set("n", "<C-Left>", "<C-w><")
vim.keymap.set("n", "<C-Right>", "<C-w>>")
vim.keymap.set("n", "<C-Down>", "<C-w>+")
vim.keymap.set("n", "<C-Up>", "<C-w>-")
-- vim.cmd('Neotree toggle')
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })

vim.lsp.enable('rust_analyzer')

vim.keymap.set("i", "<C-r><C-r>", "<Cmd>lua vim.lsp.buf.rename()<CR>")
vim.keymap.set("n", "<C-r><C-r>", "<Cmd>lua vim.lsp.buf.rename()<CR>")
vim.keymap.set("i", "<C-space>", function()
  vim.lsp.completion.get()
end)
vim.keymap.set("n", "<C-space>", function()
  vim.lsp.completion.get()
end)
vim.keymap.set("i", "<Tab>", vim.fn.pumvisible() and "<C-y>" or "<Tab>")
vim.keymap.set("i", "<C-i>", "<Cmd>lua vim.lsp.buf.format()<CR>");
vim.keymap.set("n", "<C-i>", "<Cmd>lua vim.lsp.buf.format()<CR>");

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-f>", builtin.live_grep, {})
