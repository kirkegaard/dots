return {
	"akinsho/bufferline.nvim",
	event = "BufReadPre",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		require("bufferline").setup({
			options = {
				themable = true,
				numbers = "ordinal",
				-- offsets = {
				-- 	{ filetype = "NvimTree", highlight = "NvimTreeNormal" },
				-- },
			},
		})
	end,
}
