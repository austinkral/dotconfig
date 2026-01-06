---------------------------------------------------------
-- minimal.nvim
-- tomorrow-night-esque color theme
-- https://github.com/yazeed1s/minimal.nvim
---------------------------------------------------------
return {
	"yazeed1s/minimal.nvim",
	lazy = false,
	config = function()
		vim.cmd([[colorscheme minimal-base16]])
	end,
}
