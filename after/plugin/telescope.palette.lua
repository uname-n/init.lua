require('telescope').setup({
    extensions = {
        command_palette = {
            {"editor",
                { "close", ":qa!" },
            },
            {"navigation",
                { "find_files (<leader>pp)", ":lua require('telescope.builtin').find_files()" },
                { "harpoon.anchor (<leader>ha)", ":lua require('harpoon.mark').add_file()" },
                { "harpoon (<leader>hh)", ":lua require('harpoon.ui').toggle_quick_menu()" },
            },
            {"copilot",
                { "enable", ":Copilot enable" },
                { "disable", ":Copilot disable" },
            },
            {"cloak",
                { "cloak (<leader>cl)", ":lua require('cloak').toggle()" },
            },
        }
    }
})

require('telescope').load_extension('command_palette')

vim.keymap.set("n", "<leader><leader><leader>", "<CMD>Telescope command_palette<CR>")
