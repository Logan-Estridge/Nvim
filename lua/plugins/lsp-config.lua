return {
	{
		"williamboman/mason.nvim",
    event = "VeryLazy",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
    event = "VeryLazy",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "texlab", "bashls" },
				auto_install = true,
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
    event = "VeryLazy",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({ capabilities = capabilities })
			lspconfig.texlab.setup({ capabilities = capabilities })
			lspconfig.bashls.setup({ capabilities = capabilities })

			vim.keymap.set("n", "<leader>K", vim.lsp.buf.hover, { desc = " show lsp info" })
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = " go to definition" })
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = " code action" })
		end,
	},
}
