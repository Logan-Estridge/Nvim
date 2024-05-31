return {
	"romgrk/barbar.nvim",
	event = "VeryLazy",
	dependencies = {
		"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
		"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
	},
	config = function()
		vim.g.barbar_auto_setup = false
		require("barbar").setup({
			version = "^1.0.0", -- optional: only update when a new 1.x version is released

			vim.keymap.set("n", "<M-,>", "<Cmd>BufferPrevious<CR>", { desc = "󰌥 move to previous buffer" }),
			vim.keymap.set("n", "<M-.>", "<Cmd>BufferNext<CR>", { desc = "󰌒 move to next buffer" }),
			vim.keymap.set("n", "gT", "<Cmd>BufferPrevious<CR>", { desc = "󰌥 move to previous buffer" }),
			vim.keymap.set("n", "gt", "<Cmd>BufferNext<CR>", { desc = "󰌒 move to next buffer" }),
			-- vim.keymap.set("n", "<M-p>", "<Cmd>BufferPick<CR>", { desc = "󰾹 choose buffer by letter" }),

			vim.keymap.set("n", "<M-1>", "<Cmd>BufferGoto 1<CR>", { desc = "󰌒 go to tab 1" }),
			vim.keymap.set("n", "<M-2>", "<Cmd>BufferGoto 2<CR>", { desc = "󰌒 go to tab 2" }),
			vim.keymap.set("n", "<M-3>", "<Cmd>BufferGoto 3<CR>", { desc = "󰌒 go to tab 3" }),
			vim.keymap.set("n", "<M-4>", "<Cmd>BufferGoto 4<CR>", { desc = "󰌒 go to tab 4" }),
			vim.keymap.set("n", "<M-5>", "<Cmd>BufferGoto 5<CR>", { desc = "󰌒 go to tab 5" }),
			vim.keymap.set("n", "<M-6>", "<Cmd>BufferGoto 6<CR>", { desc = "󰌒 go to tab 6" }),
			vim.keymap.set("n", "<M-7>", "<Cmd>BufferGoto 7<CR>", { desc = "󰌒 go to tab 7" }),
			vim.keymap.set("n", "<M-8>", "<Cmd>BufferGoto 8<CR>", { desc = "󰌒 go to tab 8" }),
			vim.keymap.set("n", "<M-9>", "<Cmd>BufferGoto 9<CR>", { desc = "󰌒 go to tab 9" }),

			icons = {
				buffer_index = true,
				buffer_number = "subscript",
				preset = "slanted",
			},

			sidebar_filetypes = {
				["neo-tree"] = { event = "BufWipeout", text = "󰐅 neo-tree", align = "center" },
				undotree = { event = "BufWipeout", text = " undotree", align = "center" },
			},

      auto_hide = 1,
		})
	end,
}
