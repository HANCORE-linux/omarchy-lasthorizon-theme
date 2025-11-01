return {
	{
		"bjarneo/aether.nvim",
		name = "lasthorizon",
		priority = 1000,
		opts = {
			disable_italics = false,
			colors = {
				-- Monotone shades (base00-base07)
				base00 = "#1F211B", -- Deep dusk background
				base01 = "#3A3C35", -- Softer secondary background
				base02 = "#2B2E27", -- Selection background
				base03 = "#7A7C72", -- Comments, subtle elements
				base04 = "#EBD9C6", -- Muted light foreground
				base05 = "#FFFFFF", -- Primary text
				base06 = "#FDF8F3", -- Bright text
				base07 = "#F5E8D8", -- Light background accents

				-- Accent colors (base08-base0F)
				base08 = "#D8746B", -- Gentle red
				base09 = "#EBAA93", -- Warm coral
				base0A = "#F5C89C", -- Soft amber
				base0B = "#F7D8B2", -- Calm sand
				base0C = "#F3BE8D", -- Muted peach
				base0D = "#D89B90", -- Faded rose
				base0E = "#C8AFA8", -- Mild mauve
				base0F = "#F4E6DC", -- Cream tone
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
