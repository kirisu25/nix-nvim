-- config/lua/nvim-telescope.lua
local opt = { noremap = true }
local telescope = require("telescope")
telescope.setup({})
vim.api.nvim_set_keymap("n", "<leader><tab>", ":lua require('telescope.builtin').find_files()<CR>", opt)
vim.api.nvim_set_keymap("n", "<leader><leader>", ":lua require('telescope').extensions.recent_files.pick()<CR>", opt)
