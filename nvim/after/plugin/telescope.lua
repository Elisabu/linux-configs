local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-f>', builtin.git_files, {})
vim.keymap.set('n', ';f', builtin.find_files, {})
vim.keymap.set('n', '<C-g>', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ")});
end)

require('telescope').setup{
  defaults = {
    file_ignore_patterns = { "node_modules", "dist" },
  }
  
}
