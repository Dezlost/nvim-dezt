return {
  "williamboman/mason-lspconfig.nvim",
  event = "VeryLazy",
  dependencies = {
    { "williamboman/mason.nvim", opts = {} },
    "neovim/nvim-lspconfig",
    "saghen/blink.cmp",
  },
  config = function()
    local mason_lspconfig = require("mason-lspconfig")
    local lspconfig = require("lspconfig")
    local capabilities = require("blink.cmp").get_lsp_capabilities()

    mason_lspconfig.setup({
      ensure_installed = {
        "lua_ls",
        "pyright",
        "ts_ls",
        "html",
        "cssls",
        "tailwindcss",
        "emmet_ls",
        "prismals",
      },
      automatic_installation = true,
    })

		-- Activacion del lsp y el blink
    mason_lspconfig.setup({
      function(server_name)
        lspconfig[server_name].setup({
          capabilities = capabilities,
        })
      end,
    })

		--Mapeo de atajos
    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("UserLspConfig", {}),
      callback = function(ev)
        local opts = { buffer = ev.buf, silent = true }
				vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
      end,
    })
  end,
}
