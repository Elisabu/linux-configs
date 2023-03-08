
function SetColorscheme(color)
	--color = color or "tokyonight-night"
	--vim.cmd.colorscheme(color)
	vim.cmd[[colorscheme tokyonight-moon]]

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

SetColorscheme()
