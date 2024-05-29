return {
	"ahmedkhalf/project.nvim",
	event = "VeryLazy",
	config = function()
		require("project_nvim").setup({
			require("telescope").load_extension("projects"),
			manual_mode = true,
		})
	end,
}
