return {
  "nvim-treesitter/nvim-treesitter",
	event = "VeryLazy",
  build = ":TSUpdate",
  config = function()
    -- Lenguajes pa que se instalen solos
    local lenguajes = { "rust", "javascript", "zig", "python", "typescript", "tsx", "html", "css", "prisma", "http", "lua" }
    require("nvim-treesitter").install(lenguajes)
    vim.api.nvim_create_autocmd("FileType", {
      callback = function()
        pcall(function()
          vim.treesitter.start()
          vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end)
      end,
    })
  end,
}
