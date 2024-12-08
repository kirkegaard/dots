return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	keys = {
		{
			-- Customize or remove this keymap to your liking
			"<leader>fm",
			function()
				require("conform").format({ async = true, lsp_format = "fallback" })
			end,
			mode = "",
			desc = "Format buffer",
		},
	},
	-- Everything in opts will be passed to setup()
	opts = {
		-- Define your formatters
		formatters_by_ft = {
			python = { "isort", "black" },
			lua = { "stylua" },
			php = { "php-cs-fixer" },
			css = { "prettier" },
			deno = { "deno fmt" },
			html = { "prettier" },
			scss = { "prettier" },
			json = { "prettier" },
			javascript = { "prettier" },
			javascriptreact = { "prettier" },
			typescript = { "prettier" },
			typescriptreact = { "prettier" },
		},
		-- Logging
		log_level = vim.log.levels.DEBUG,
		-- Set up format-on-save
		format_on_save = function(bufnr)
			-- Disable with a global or buffer-local variable
			if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
				return
			end
			return { timeout_ms = 500, lsp_format = "fallback" }
		end,
		-- format_on_save = { timeout_ms = 500, lsp_format = "fallback" },
		-- Customize formatters
		formatters = {
			shfmt = {
				prepend_args = { "-i", "2" },
			},
			["php-cs-fixer"] = {
				command = "php-cs-fixer",
				args = {
					"fix",
					"--using-cache=no",
					"--rules=@Symfony",
					"--allow-risky=yes",
					"$FILENAME",
				},
				stdin = false,
			},
		},
	},
	init = function()
		-- If you want the formatexpr, here is the place to set it
		vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
	end,
}
