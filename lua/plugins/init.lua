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
	},
	{
		'nvim-treesitter/nvim-treesitter',
		config = function() 
			require("nvim-treesitter.configs").setup(require("after.treesitter"))
		end,    
		lazy = false,
		build = ':TSUpdate'
	},
	{ 'wakatime/vim-wakatime', lazy = false }
}
