return {
  'saghen/blink.cmp',
	event = "VeryLazy",
  dependencies = {
    'saghen/blink.lib',
    'rafamadriz/friendly-snippets',
  },
  build = function()
    require('blink.cmp').build():pwait()
  end,

  opts = {
    keymap = {
				preset = "none",
				["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
				["<CR>"] = { "accept", "fallback" },
				["<Tab>"] = { "select_next", "fallback" },
				["<S-Tab>"] = { "select_prev", "fallback" },
		},
    completion = { documentation = { auto_show = true }, ghost_text = {enabled = true} },
    sources = { default = { 'lsp', 'path', 'snippets', 'buffer' } },
    fuzzy = { implementation = "rust" }
  },
}
