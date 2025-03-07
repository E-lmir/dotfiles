-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.api.nvim_command("set autochdir")
vim.keymap.set("n", "<leader>hh", "<Cmd>lua Snacks.dashboard()<CR>")
