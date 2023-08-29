return {
    --    {
    --        "EdenEast/nightfox.nvim",
    --        config = function()
    --            vim.cmd([[colorscheme nordfox]])
    --        end,
    --    },
    --{
    --    "catppuccin/nvim",
    --    name = "catppuccin",
    --    priority = 1000,
    --    config = function()
    --        vim.cmd([[colorscheme catppuccin-latte]])
    --        -- vim.cmd([[colorscheme catppuccin-frappe]])
    --        -- vim.cmd([[colorscheme catppuccin-macchiato]])
    --        -- vim.cmd([[colorscheme catppuccin-mocha]])
    --    end,
    --},
    {
        "Shatur/neovim-ayu",
        mirage = true,
        config = function()
            vim.cmd([[colorscheme ayu-mirage]])
        end,
    },
}
