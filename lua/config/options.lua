vim.opt.number = true
vim.opt.relativenumber = true
vim.g.lazyvim_check_order = false
-- Enable break indent
vim.opt.breakindent = true
-- Save undo history
vim.opt.undofile = true
-- Case insensitive searching UNLESS /C or capital in search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Decrease update time
vim.opt.updatetime = 250
vim.wo.signcolumn = "yes"

-- Set colorscheme
--vim.cmd [[colorscheme onedark]]

--vim.cmd()
vim.opt.clipboard = "unnamedplus"

-- Set completeopt to have a better completion experience
vim.opt.completeopt = "menuone,noselect"

vim.g.mapleader = " "

vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.backup = false
vim.opt.showcmd = false
vim.opt.cmdheight = 1
vim.opt.laststatus = 3
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.shell = "zsh"
vim.opt.backupskip = { "/tmp/*", "/private/tmp/*" }
vim.opt.inccommand = "split"
vim.opt.smarttab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.wrap = false -- No Wrap lines
vim.opt.backspace = { "start", "eol", "indent" }
vim.opt.path:append({ "**" }) -- Finding files - Search down into subfolders
vim.opt.wildignore:append({ "*/node_modules/*" })
vim.opt.splitbelow = true -- Put new windows below current
vim.opt.splitright = true -- Put new windows right of current
vim.opt.splitkeep = "cursor"
vim.o.hlsearch = false
vim.opt.winblend = 15
vim.opt.pumblend = 14
vim.opt.showmode = false
vim.cmd("highlight NormalFloat guibg=#1f2335") -- Fondo para ventanas flotantes
vim.cmd("highlight Pmenu guibg=#1f2335")
vim.keymap.set("n", ";a", "<cmd>AerialToggle!<CR>")

vim.opt.updatetime = 500

-- vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
-- 	virtual_text = true,
-- 	underline = true,
-- 	signs = true,
-- })

vim.lsp.handlers["textDocument/publishDiagnostics"] = function(err, result, ctx)
	require("ts-error-translator").translate_diagnostics(err, result, ctx)
	vim.lsp.diagnostic.on_publish_diagnostics(err, result, ctx)
end

vim.api.nvim_set_keymap(
	"n",
	"<leader>i",
	'<cmd>lua vim.diagnostic.open_float({focus = true, scope = "cursor"})<CR>',
	{ noremap = true, silent = true }
)
