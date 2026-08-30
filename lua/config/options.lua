-- Configuracion general
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.signcolumn = "yes"

-- Busqueda
vim.opt.ignorecase = true
vim.opt.smartcase = true

--Identacion
vim.opt.autoindent = true
vim.opt.smartindent = false
vim.opt.smarttab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.wrap = true
vim.opt_local.smartindent = true

-- Para quitar las ~ que son medio bastante feas
vim.opt.fillchars:append({ eob = " " })
