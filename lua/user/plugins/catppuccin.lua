return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
        flavour = "macchiato",
        transparent_background = true,
        term_colors = true,
        integrations = {
            cmp = true,
            gitsigns = true,
            treesitter = true,
            fidget = true,
            mason = true,
            telescope = {
                enabled = true,
            },
            which_key = true,
        },
    },
}
