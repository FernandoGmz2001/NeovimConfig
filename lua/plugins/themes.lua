return {
	{
		"olimorris/onedarkpro.nvim",
		priority = 1000, -- Ensure it loads first
		config = function()
			require("onedarkpro").setup({
				options = {
					cursorline = false, -- Use cursorline highlighting?
					transparency = false, -- Use a transparent background?
					terminal_colors = true, -- Use the theme's colors for Neovim's :terminal?
					lualine_transparency = true, -- Center bar transparency?
					highlight_inactive_windows = false, -- When the window is out of focus, change the normal background?
				},
			})
		end,
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		opts = {},
		config = function()
			-- require("catppuccin").setup({
			-- 	transparent_background = true,
			-- })
			-- vim.cmd([[colorscheme catppuccin-macchiato]])
		end,
	},
	{
		"samharju/synthweave.nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000,
		config = function()
			-- vim.cmd.colorscheme("synthweave")
			-- transparent version
			-- vim.cmd.colorscheme("synthweave-transparent")
		end,
	},
}
