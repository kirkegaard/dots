return {
	"nvim-telescope/telescope.nvim",
	cmd = "Telescope",
	config = function()
		require("telescope").setup({
			defaults = {
				sorting_strategy = "ascending",
				layout_config = {
					horizontal = { prompt_position = "top" },
				},
			},
		})
	end,
}
