return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        "nvim-telescope/telescope-ui-select.nvim",
        "nvim-tree/nvim-web-devicons",
        "ThePrimeagen/harpoon",
    },
    config = function()
        -- import telescope plugin safely
        local telescope = require("telescope")

        -- import telescope actions safely
        local actions = require("telescope.actions")

        -- import telescope-ui-select safely
        local themes = require("telescope.themes")
        --
        -- import telescope-builtin safely
        local builtin = require("telescope.builtin")

        -- configure telescope
        telescope.setup({
            -- configure custom mappings
            defaults = {
                path_displace = { "truncate" },
                mappings = {
                    i = {
                        ["<C-k>"] = actions.move_selection_previous,
                        ["<C-j>"] = actions.move_selection_next,
                        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist, -- send selected to quickfixlist
                    },
                },
            },
            extensions = {
                ["ui-select"] = {
                    themes.get_dropdown({}),
                },
            },
        })

        telescope.load_extension("fzf")
        telescope.load_extension("ui-select")
        telescope.load_extension("harpoon")

        -- set keymaps
        local keymap = vim.keymap

        keymap.set("n", "<leader>pf", builtin.find_files, {})
        keymap.set("n", "<C-p", builtin.git_files, {})
        keymap.set("n", "<leader>ps", function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end)
    end,
}
