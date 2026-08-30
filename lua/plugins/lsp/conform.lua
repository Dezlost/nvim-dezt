return {
	"stevearc/conform.nvim",
	event = "VeryLazy",
	keys = {
		{
			"<leader>fm",
			function()
				require("conform").format({ async = true, timeout_ms = 3000, lsp_format = "fallback" })
			end,
			mode = { "n", "v" },
		},
	},
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "isort", "black" },
			rust = { "rustfmt", lsp_format = "fallback" },
			javascript = { "prettierd", "prettier", stop_after_first = true },
			html = { "prettierd", "prettier", stop_after_first = true },
			css = { "prettierd", "prettier", stop_after_first = true },
		},
	},
}
