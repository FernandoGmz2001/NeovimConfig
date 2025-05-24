return {
	lazy = false,
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = {
		{ ";f", "<cmd>Telescope find_files<cr>", desc = "Find files" },
		{ ";r", "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },
		{ ";b", "<cmd>Telescope buffers<cr>", desc = "Find buffers" },
	},
	config = function()
		require("telescope").setup({
			defaults = {
				layout_config = {
					vertical = { width = 0.5 },
					-- other layout configuration here
				},
				-- ...
			},
			pickers = {
				find_files = {
					theme = "dropdown",
				},
			},
			extensions = {
				-- ...
			},
		})
	end,
}
