require("basic.remap")

vim.opt.guicursor = ""
vim.opt.nu = true
vim.opt.relativenumber = true
--vim.opt.softtabstop = 2
--vim.opt.shiftwidth = 2
--vim.opt.tabstop = 2
--vim.opt.expandtab = true
vim.cmd('set tabstop=2')
vim.cmd('set softtabstop=2')
vim.cmd('set shiftwidth=2')
vim.cmd('set expandtab')
--vim.cmd('set clipboard=unnamed')   

vim.opt.smartindent = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.colorcolumn = "80"
vim.opt.updatetime = 50

--vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true
--vim.g.copilot_tab_fallback = ""
vim.api.nvim_set_keymap("i", "<C-r>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
