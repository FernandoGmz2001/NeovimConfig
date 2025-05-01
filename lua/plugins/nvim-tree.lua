return {
	"nvim-tree/nvim-tree.lua",
	enabled = true,
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local nvimtree = require("nvim-tree")

		-- recommended settings from nvim-tree documentation
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		nvimtree.setup({
			view = {
				side = "left",
				adaptive_size = true,
				relativenumber = false,
				float = {
					enable = false,
					quit_on_focus_loss = true,
					open_win_config = {
						relative = "editor",
						border = "rounded",
						height = 25,
						row = 2,
						col = math.floor((vim.o.columns - 50) / 2),
					},
				},
			},
			actions = {
				open_file = {
					quit_on_open = true, -- Keep nvim-tree open after selecting a file
					window_picker = {
						enable = false, -- Disable window picker to avoid closing current file
					},
				},
			},
			renderer = {
				indent_markers = {
					enable = true,
				},
				icons = {
					glyphs = {},
				},
			},
			filters = {
				custom = { ".DS_Store" },
			},
			git = {
				ignore = false,
			},
		})

		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		keymap.set(
			"n",
			"<leader>e",
			"<cmd>NvimTreeFindFileToggle<CR>",
			{ desc = "Toggle file explorer on current file" }
		)
	end,
}
