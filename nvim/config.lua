require'lspconfig'.pyls.setup{on_attach=require'completion'.on_attach}

--Use completion-nvim in every buffer
--autocmd BufEnter * lua require'completion'.on_attach()
