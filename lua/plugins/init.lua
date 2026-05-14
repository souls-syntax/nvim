return {
	{
	  "wtfox/jellybeans.nvim",
	  lazy = false,
	  priority = 1000,
	  opts = {},
	},
	{
	    'nvim-telescope/telescope.nvim', version = '*',
	    dependencies = {
		'nvim-lua/plenary.nvim',
		-- optional but recommended
		{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
	    }
	}
}
