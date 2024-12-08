vim.filetype.add({
	extension = {
		["js"] = "javascriptreact",
		["frag"] = "c",
		["vert"] = "c",
		["glsl"] = "c",
		["md"] = function()
			vim.opt.wrap = true
			vim.opt.textwidth = 80
			return "markdown"
		end,
		["groovy"] = function()
			vim.opt.shiftwidth = 4
			vim.opt.tabstop = 4
			vim.opt.softtabstop = 4
			return "groovy"
		end,
	},
	pattern = {
		["Jenkinsfile"] = function()
			vim.opt.shiftwidth = 4
			vim.opt.tabstop = 4
			vim.opt.softtabstop = 4
			return "groovy"
		end,
	},
})
