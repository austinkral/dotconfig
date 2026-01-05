return { 
	"nvimdev/hlsearch.nvim", 
	lazy = true,
	event = "BufRead",
	config = function() 
		require("hlsearch").setup()
	end,
}
