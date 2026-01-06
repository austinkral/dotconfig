---------------------------------------------------------
-- hlsearch.nvim
-- Auto toggles search highlighting
-- https://github.com/nvimdev/hlsearch.nvim
---------------------------------------------------------
return { 
	"nvimdev/hlsearch.nvim", 
	lazy = true,
	event = "BufRead",
	config = function() 
		require("hlsearch").setup()
	end,
}
