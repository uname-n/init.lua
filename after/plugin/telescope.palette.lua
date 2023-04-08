require('telescope').setup({
    extensions = {
        command_palette = {
            {"navigation",
                { "dir (<leader>pd)", ":lua vim.cmd.Ex()" },
                { "harpoon.anchor (<leader>ha)", ":lua require('harpoon.mark').add_file()" },
                { "harpoon (<leader>hh)", ":lua require('harpoon.ui').toggle_quick_menu()" },
            },
        }
    }
})

require('telescope').load_extension('command_palette')

vim.keymap.set("n", "<leader><leader><leader>", "<CMD>Telescope command_palette<CR>")
