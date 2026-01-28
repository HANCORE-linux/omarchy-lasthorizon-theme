return {
    {
        "bjarneo/aether.nvim",
        branch = "v2",
        name = "aether",
        priority = 1000,
        opts = {
            transparent = false,
            colors = {
                -- Background colors
                bg = "#0c0b0c",
                bg_dark = "#0c0b0c",
                bg_highlight = "#817c81",

                -- Foreground colors
                -- fg: Object properties, builtin types, builtin variables, member access, default text
                fg = "#ffffff",
                -- fg_dark: Inactive elements, statusline, secondary text
                fg_dark = "#e1dede",
                -- comment: Line highlight, gutter elements, disabled states
                comment = "#817c81",

                -- Accent colors
                -- red: Errors, diagnostics, tags, deletions, breakpoints
                red = "#a96756",
                -- orange: Constants, numbers, current line number, git modifications
                orange = "#e5cfc9",
                -- yellow: Types, classes, constructors, warnings, numbers, booleans
                yellow = "#b99d8e",
                -- green: Comments, strings, success states, git additions
                green = "#87a9b0",
                -- cyan: Parameters, regex, preprocessor, hints, properties
                cyan = "#adc2c8",
                -- blue: Functions, keywords, directories, links, info diagnostics
                blue = "#a5a0b6",
                -- purple: Storage keywords, special keywords, identifiers, namespaces
                purple = "#c38b7b",
                -- magenta: Function declarations, exception handling, tags
                magenta = "#e2c1b8",
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
