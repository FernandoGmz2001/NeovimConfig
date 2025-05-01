return {
	"ThePrimeagen/refactoring.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
	},
	lazy = false,
	opts = {},
	keys = {
		{ "<leader>rI", ":Refactor inline_func", desc = "Refactor inline function" },
	},
}
