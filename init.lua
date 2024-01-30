vim.o.hlsearch = false
vim.o.incsearch = true
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.scrolloff = 8
vim.wo.signcolumn = "yes"
vim.o.mouse = "a"
vim.o.mousemoveevent = true
vim.o.clipboard = "unnamedplus"
vim.o.breakindent = true
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.smartindent = true
vim.o.updatetime = 250
vim.o.timeoutlen = 300
vim.o.swapfile = false
vim.o.completeopt = "menuone,noselect"
vim.o.termguicolors = true
vim.o.fileencoding = "utf-8"
vim.o.showmode = true
vim.o.cmdheight = 1
vim.o.wrap = false
vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.softtabstop = 2

-- Modes
--  normal_mode = "n"
--  insert_mode = "i",
--  visual_mode = "v",
--  visual_block_mode = "x",
--  term_mode = "t"
--  command_mode = "c"

vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true, desc = "go up" })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true, desc = "go down" })

vim.keymap.set("n", "<leader>w", ":wa<cr>", { noremap = true, silent = true, desc = "save file" })
vim.keymap.set("n", "<leader>ax", ":wqa<cr>", { noremap = true, silent = true, desc = "save everything and quit" })
vim.keymap.set("n", "<leader>x", ":wq<cr>", { noremap = true, silent = true, desc = "save and quit" })
vim.keymap.set("n", "<leader>ca", ":keepjumps normal! ggyG<cr>", {
	noremap = true,
	silent = true,
	desc = "copy everything",
})

-- Better window navigation
vim.keymap.set("n", "<c-h>", "<c-w>h", { noremap = true, silent = true, desc = "move left" })
vim.keymap.set("n", "<c-j>", "<c-w>j", { noremap = true, silent = true, desc = "move down" })
vim.keymap.set("n", "<c-k>", "<c-w>k", { noremap = true, silent = true, desc = "move up" })
vim.keymap.set("n", "<c-l>", "<c-w>l", { noremap = true, silent = true, desc = "move right" })

-- Resize with arrows
vim.keymap.set("n", "<c-up>", ":resize -2<CR>", { noremap = true, silent = true, desc = "decrease height" })
vim.keymap.set("n", "<c-down>", ":resize +2<CR>", { noremap = true, silent = true, desc = "increase height" })
vim.keymap.set("n", "<c-left>", ":vertical resize -2<CR>", { noremap = true, silent = true, desc = "decrease width" })
vim.keymap.set("n", "<c-right>", ":vertical resize +2<CR>", { noremap = true, silent = true, desc = "increase width" })

-- Navigate buffers, close buffer
vim.keymap.set("n", "<s-l>", ":bnext<cr>", { noremap = true, silent = true, desc = "next buffer" })
vim.keymap.set("n", "<s-h>", ":bprevious<cr>", { noremap = true, silent = true, desc = "previous buffer" })
vim.keymap.set("n", "<leader>xb", ":bd!<cr>", { noremap = true, silent = true, desc = "[c]lose [b]uffer" })
vim.keymap.set("n", "<leader>h", "_", { noremap = true, silent = true, desc = "start of line" })
vim.keymap.set("n", "<leader>l", "$", { noremap = true, silent = true, desc = "end of line" })
vim.keymap.set("n", "[b", "<cmd>bprevious<cr>", { desc = "previous [b]uffer" })
vim.keymap.set("n", "]b", "<cmd>bnext<cr>", { desc = "next [b]uffer" })
vim.keymap.set("n", "<leader>bb", "<cmd>e #<cr>", { desc = "switch to other buffer" })
vim.keymap.set("n", "<leader>`", "<cmd>e #<cr>", { desc = "switch to other buffer" })

-- Clear search with <esc>
vim.keymap.set({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })

-- Press jk fast to enter
vim.keymap.set("i", "jk", "<esc>", { noremap = true, silent = true, desc = "escape from insert mode" })

-- save file
vim.keymap.set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "save file" })

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", { noremap = true, silent = true, desc = "indent left" })
vim.keymap.set("v", ">", ">gv", { noremap = true, silent = true, desc = "indent right" })

vim.keymap.set("x", "<a-j>", ":m '>+1<CR>gv=gv", { noremap = true, silent = true, desc = "move line/s down" })
vim.keymap.set("x", "<a-k>", ":m '<-2<CR>gv=gv", { noremap = true, silent = true, desc = "move line/s up" })
vim.keymap.set("v", "p", '"_dP', { noremap = true, silent = true, desc = "for copy content" })
-- vim.keymap.set("v","<leader>y",'"+y',{noremap=true,silent=true,desc="copy to clipboard"})
-- vim.keymap.set("v","<leader>p",'"+p',{noremap=true,silent=true,desc="past from clipboard"})

vim.keymap.set("n", "<leader>n", ":Neotree toggle<cr>", { desc = "File [E]xplorer" })

vim.keymap.set(
	"n",
	"<leader>ff",
	":Telescope find_files prompt_prefix=🔍<cr>",
	{ noremap = true, silent = true, desc = "find files" }
)
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep prompt_prefix=🔍<cr>", {
	noremap = true,
	silent = true,
	desc = "live grep",
})
vim.keymap.set(
	"n",
	"<leader>fb",
	":Telescope buffers prompt_prefix=🔍<cr>",
	{ noremap = true, silent = true, desc = "show buffers" }
)
vim.keymap.set("n", "<leader>fh", ":Telescope  help_tags<cr>", { noremap = true, silent = true, desc = "help tags" })
vim.keymap.set("n", "<leader>fn", ":enew<cr>", { noremap = true, silent = true, desc = "new file" })

vim.keymap.set("n", "n", "nzzzv", { noremap = true, silent = true, desc = "next result" })
vim.keymap.set("n", "N", "Nzzzv", { noremap = true, silent = true, desc = "previous result" })

local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = "*",
})

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins")
