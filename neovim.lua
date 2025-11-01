return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#1F211B", -- Default background
                base01 = "#52554d", -- Lighter background (status bars)
                base02 = "#1F211B", -- Selection background
                base03 = "#52554d", -- Comments, invisibles
                base04 = "#FADFC1", -- Dark foreground
                base05 = "#ffffff", -- Default foreground
                base06 = "#ffffff", -- Light foreground
                base07 = "#FADFC1", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#d75450", -- Variables, errors, red
                base09 = "#ec9997", -- Integers, constants, orange
                base0A = "#F5C498", -- Classes, types, yellow
                base0B = "#F7D1AB", -- Strings, green
                base0C = "#F3B788", -- Support, regex, cyan
                base0D = "#d7857f", -- Functions, keywords, blue
                base0E = "#c6a49f", -- Keywords, storage, magenta
                base0F = "#fef4eb", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
