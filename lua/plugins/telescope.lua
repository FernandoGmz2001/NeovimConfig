return {
	lazy = false,
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope-file-browser.nvim",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
		},
	},
	keys = {
		{ ";f", "<cmd>Telescope find_files<cr>", desc = "Find files" },
		{ ";r", "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },
		{ ";b", "<cmd>Telescope buffers<cr>", desc = "Find buffers" },
		{
			"sf",
			"<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>",
			desc = "Open current buffer in file browser",
		},
	},
	config = function()
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>nf", function()
			builtin.find_files({ cwd = vim.fn.stdpath("config") })
		end, { desc = "Open nvim files" })
		local fb_actions = require("telescope").extensions.file_browser.actions

		require("telescope").setup({
			defaults = {
				layout_config = {
					vertical = { width = 0.5 },
					prompt_position = "top",
				},
			},
			pickers = {
				find_files = {
					hidden = true,
					sorting_strategy = "ascending",
				},
				live_grep = {
					hidden = true,
					sorting_strategy = "ascending",
				},
			},
		})
	end,
}
