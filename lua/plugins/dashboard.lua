return {
	"nvimdev/dashboard-nvim",
	enabled = true,
	event = "VimEnter",
	config = function()
		require("dashboard").setup({
			shortcut_type = "number",
			theme = "hyper",
			config = {
				mru = {
					enable = true,
					key_format = " [%s]", -- remove default surrounding `[]`
				},
				week_header = {
					enable = true,
				},
				project = {
					enable = false,
					limit = 2,
					icon = "Projects",
					label = "",
					action = "Telescope find_files cwd=",
				},
				shortcut = {
					{
						icon = " ",
						desc = "Old files",
						group = "Label",
						key = "r",
						action = "Telescope oldfiles",
					},
				},
				header = {
					[[                                                                       ]],
					[[                                                                       ]],
					[[                                                                       ]],
					[[                                                                       ]],
					[[                            ███████╗███████╗██████╗ ██████╗ ███████╗██╗   ██╗                            ]],
					[[                            ██╔════╝██╔════╝██╔══██╗██╔══██╗██╔════╝██║   ██║                            ]],
					[[                            █████╗  █████╗  ██████╔╝██║  ██║█████╗  ██║   ██║                            ]],
					[[                            ██╔══╝  ██╔══╝  ██╔══██╗██║  ██║██╔══╝  ╚██╗ ██╔╝                            ]],
					[[                            ██║     ███████╗██║  ██║██████╔╝███████╗ ╚████╔╝                             ]],
					[[                            ╚═╝     ╚══════╝╚═╝  ╚═╝╚═════╝ ╚══════╝  ╚═══╝                              ]],
					[[                                                                       ]],
					[[                                                                       ]],
					[[                                                                       ]],
					[[                                                                       ]],
				},
				footer = {
					[[                                                                       ]],
					[[                                                                       ]],
					[[                                                                       ]],
					[[                                                                       ]],
					[[                                                                       ]],
					[[                              Disfruto no chambear...                            ]],
				},
			},
			vertical_center = false,
		})
	end,
	dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
