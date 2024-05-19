return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			-- Add languages to be installed here that you want installed for treesitter
			ensure_installed = { "c", "cpp", "go", "json", "lua", "python", "rust", "typescript", "cmake", "vimdoc" },

			-- Install parsers synchronously (only applied to `ensure_installed`)
			sync_install = false,
			auto_install = true,
			highlight = {
				enable = true,
				disable = { "latex" },
			},
			indent = { enable = true },
		})
	end,
}
