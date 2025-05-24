return {
	"folke/persistence.nvim",
	event = "BufReadPre", -- this will only start session saving when an actual file was opened
	config = function()
		require("persistence").setup({})
		vim.keymap.set("n", "<leader>ls", function()
			require("persistence").load({ last = true })
		end)
	end,
}
