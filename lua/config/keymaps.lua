local opts = { noremap = true, silent = true }
local keymap = vim.keymap

-- Mapeos generales
keymap.set("n", "<leader>z", ":ZenMode <CR>")
keymap.set("n", "WW", vim.cmd.write)
keymap.set("n", "QQ", ":wqa<Return>")
keymap.set("n", ";q", ":bd<Return>")
keymap.set("n", "<esc>", ":noh<CR>")
keymap.set("n", "<C-a>", "gg<S-v>G")
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)
keymap.set({ "n", "v" }, "d", '"_d')

-- Mapeo para eliminar con Ctrl + Backspace en modo inserción
vim.keymap.set("i", "<C-H>", "<C-W>", opts)
-- Función para obtener la selección visual
function vim.getVisualSelection()
	vim.cmd('noau normal! "vy"') -- Copia la selección visual al registro 'v'
	local text = vim.fn.getreg("v") -- Obtiene el texto del registro 'v'
	vim.fn.setreg("v", {}) -- Limpia el registro 'v'

	text = string.gsub(text, "\n", "") -- Elimina saltos de línea
	if #text > 0 then
		return text
	else
		return ""
	end
end

-- Mapeo en modo visual para buscar la selección visual
keymap.set("v", ";r", function()
	local text = vim.getVisualSelection() -- Obtiene la selección visual
	require("telescope.builtin").live_grep({ default_text = text }) -- Busca con Telescope
end, opts)
