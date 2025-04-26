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
}
