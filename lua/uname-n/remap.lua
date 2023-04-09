vim.keymap.set("i", "<C-k>", "<Esc>")

vim.api.nvim_set_keymap("i", "<C-s>", 'copilot#Suggest()', {expr=true, silent=true})
vim.api.nvim_set_keymap("i", "<C-v>", 'copilot#Accept()', {expr=true, silent=true})
vim.api.nvim_set_keymap("i", "<C-n>", 'copilot#Dismiss()', {expr=true, silent=true})
vim.api.nvim_set_keymap("i", "<C-p>", '<Esc>:Copilot panel<CR>', {silent=true})

vim.api.nvim_set_keymap("i", "<TAB>", "pumvisible() ? coc#_select_confirm() : '<TAB>'", {noremap=true, silent=true, expr=true})

vim.api.nvim_set_keymap("n", "gd", "<Plug>(coc-definition)", {silent=true})

vim.api.nvim_set_keymap("n", "<C-t>", ':NERDTreeToggle<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap("i", "<C-t>", '<Esc>:NERDTreeToggle<CR>', {noremap=true, silent=true})
