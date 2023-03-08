local lsp = require('lsp-zero')

lsp.preset("recommended")

local cmp = require('cmp')
local cmp_sele = {behaviour = cmp.SelectBehavior.Select}
cmp.setup({
  mapping = {
   ['<C-t>'] = cmp.mapping.select_prev_item(cmp_select),
  
	['<C-y>'] = cmp.mapping.confirm({select = true }),
  ['<C-Space>'] = cmp.mapping.complete(),
  ['<Tab>'] = cmp.mapping(function(fallback)
      --local copilot_keys = vim.fn['copilot#Accept']()
      if cmp.visible() then
        cmp.select_next_item()
        print("SELECT")
      elseif copilot_keys ~= '' and type(copilot_keys) == 'string' then
        print("COPILOT ACCEPT")
        vim.api.nvim_feedkeys(copilot_keys, 'i', true)
      else
        print("TABBING")
        fallback()
      end
    end, {
    'i',
    's',
  }),  
  },
})

local cmp_mappings = lsp.defaults.cmp_mappings({
	--['<C-r>'] = cmp.mapping.select_next_item(cmp_select),
	--['<C-t>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-y>'] = cmp.mapping.confirm({select = true }),
  ['<C-Space>'] = cmp.mapping.complete(),
  ['<Tab>'] = cmp.mapping(function(fallback)
      print("ACCEPT")
      local copilot_keys = vim.fn['copilot#Accept']()
      if copilot_keys ~= '' and type(copilot_keys) == 'string' then
        print("COPILOT ACCEPT")
        vim.api.nvim_feedkeys(copilot_keys, 'i', true)
      elseif cmp.visible() then
        cmp.select_next_item()
        print("SELECT")
      else
        print("TABBING")
        fallback()
      end
    end, {
    'i',
    's',
  }),
--['<C-n>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 'c' }),
--['<C-p>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 'c' }),
--['<C-M-k>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
--['<C-M-j>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
--['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
--['<C-y>'] = cmp.config.disable,
--['<C-e>'] = cmp.mapping({
  --	i = cmp.mapping.abort(),
  --	c = cmp.mapping.close(),
  --}),
  --['<CR>'] = cmp.mapping.confirm({ select = false }),

})

-- When you don't have mason.nvim installed
-- You'll need to list the servers installed in your system
lsp.setup_servers({'tsserver', 'eslint'})

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

--lsp.setup_nvim_cmp({
--  mapping = cmp_mappings
--})

lsp.on_attach(function(client, bufnr)
	print("help")
	local opts = {buffer = bufnr, remap = false}

	vim.keymap.set("n", "<leader>gd", function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
	vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
	vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.opean_float() end, opts)
end)


lsp.setup()

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  update_in_insert = false,
  underline = true,
  severity_sort = false,
  float = true,
})
