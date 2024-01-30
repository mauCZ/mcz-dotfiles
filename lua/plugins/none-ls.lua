return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier.with({ extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" } }),
				null_ls.builtins.formatting.sqlfmt,
				null_ls.builtins.formatting.tlint,
				null_ls.builtins.formatting.beautysh,
				null_ls.builtins.formatting.cbfmt,
				null_ls.builtins.formatting.cbfmt,
			},
		})
		vim.keymap.set("n", "<leader>mp", vim.lsp.buf.format, { desc = "format" })
	end,
}
