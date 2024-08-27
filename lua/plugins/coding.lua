return {
	{
		"jackMort/ChatGPT.nvim",
		event = "VeryLazy",
		config = function()
			require("chatgpt").setup({
				-- this config assumes you have OPENAI_API_KEY environment variable set
				openai_params = {
					-- NOTE: model
					model = "gpt-4o",
				},
			})
		end,
		dependencies = {
			"MunifTanjim/nui.nvim",
			"nvim-lua/plenary.nvim",
			"folke/trouble.nvim",
			"nvim-telescope/telescope.nvim",
		},
	},
	{
		"terrortylor/nvim-comment",
		keys = {
			{ "gc", "<Plug>Commentary", desc = "Comment" },
		},
	},
	{
		"tpope/vim-fugitive",
		lazy = false, -- if you want it to be loaded at startup
	},
	{ "nvim-tree/nvim-web-devicons" },

	{
		"epwalsh/obsidian.nvim",
		version = "*", -- recommended, use latest release instead of latest commit
		lazy = true,
		ft = "markdown",
		-- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
		-- event = {
		--   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
		--   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
		--   "BufReadPre path/to/my-vault/**.md",
		--   "BufNewFile path/to/my-vault/**.md",
		-- },
		dependencies = {
			-- Required.
			"nvim-lua/plenary.nvim",

			-- see below for full list of optional dependencies 👇
		},
		opts = {
			workspaces = {
				{
					name = "personal",
					path = "~/vaults/personal",
				},
				{
					name = "work",
					path = "~/vaults/work",
				},
			},

			-- see below for full list of options 👇
		},
	},
}
