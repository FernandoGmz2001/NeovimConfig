-- En el setup de lazy.nvim:
return {
	{ "tpope/vim-fugitive" },
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup({
				signs = {
					add = { text = "+" },
					change = { text = "~" },
					delete = { text = "_" },
				},
			})
		end,
	},
	{ "sindrets/diffview.nvim" },
}
