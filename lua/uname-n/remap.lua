vim.keymap.set("i", "<C-k>", "<Esc>")

vim.api.nvim_set_keymap("i", "<TAB>", "pumvisible() ? coc#_select_confirm() : '<TAB>'", {noremap=true, silent=true, expr=true})
vim.api.nvim_set_keymap('n', '<Tab>', '<C-W>w', { noremap = true })

vim.api.nvim_set_keymap("n", "gd", "<Plug>(coc-definition)", {silent=true})
