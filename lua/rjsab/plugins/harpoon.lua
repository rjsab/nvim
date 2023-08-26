return {
    "ThePrimeagen/harpoon",
    dependences = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        local mark = require("harpoon.mark")
        local ui = require("harpoon.ui")
        -- set keymaps
        local keymap = vim.keymap

        keymap.set("n", "<leader>hm", mark.add_file)
        keymap.set("n", "<C-e>", ui.toggle_quick_menu)

        keymap.set("n", "<C-h>", function()
            ui.nav_file(1)
        end)
        keymap.set("n", "<C-t>", function()
            ui.nav_file(2)
        end)
        keymap.set("n", "<C-n>", function()
            ui.nav_file(3)
        end)
        keymap.set("n", "<C-s>", function()
            ui.nav_file(4)
        end)
    end,
}
