return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"lua",
				"vim",
				"vimdoc",
				"tsx",
				"html",
				"css",
				"typescript",
				"javascript",
				"java",
				"bash",
				"c",
			},
			sync_install = false,
			auto_install = true,
			highlight = {
				enable = true,
				use_languagetree = true,
				additional_vim_regex_highlighting = { "markdown" },
			},
			indent = {
				enable = true,
			},
		})
	end,
}
