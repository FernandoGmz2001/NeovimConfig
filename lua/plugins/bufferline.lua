return {
	"akinsho/bufferline.nvim",
	lazy = false,
	event = "VeryLazy",
	keys = {
		{ "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next tab" },
		{ "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev tab" },
	},
	opts = {
		options = {
			mode = "buffers",
			show_buffer_close_icons = false,
			show_close_icon = false,
		},
		highlights = {
			fill = {
				bg = "NONE", -- Elimina el color de fondo
			},
		},
	},
}
