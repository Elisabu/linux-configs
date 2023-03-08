
function rename_variable_case_insensitive()
  local old_name = vim.fn.input('Current variable name: ')
  local new_name = vim.fn.input('New variable name: ')
  --vim.cmd('execute "%s/' .. vim.fn.escape(old_name, '/\\') .. '/\\' .. vim.fn.escape(new_name, '/\\') .. '/gc"')
  vim.cmd('execute "%s/' .. vim.fn.escape(old_name, '/\\') .. '/' .. vim.fn.escape(new_name, '/\\') .. '/gci"')
  --vim.cmd('execute "%s/' .. vim.fn.escape(old_name, '/\\') .. '/toupper(submatch(0)) == toupper("' .. vim.fn.escape(old_name, '/\\') .. '") ? "' .. new_name .. '" : submatch(0)/gic"')
end
