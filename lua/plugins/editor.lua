return {

	{ "junegunn/fzf" },
	{ "junegunn/fzf.vim" },
	{
		"dinhhuy258/git.nvim",
		event = "BufReadPre",
		opts = {
			keymaps = {
				-- Open blame window
				blame = "<Leader>gb",
				-- Open file/folder in git repository
				browse = "<Leader>go",
			},
		},
	},
	{
		"telescope.nvim",
		dependencies = {
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "make",
			},
			"nvim-telescope/telescope-file-browser.nvim",
		},
	},
	{
		"norcalli/nvim-colorizer.lua",
		event = "BufReadPre",
		config = function()
			require("colorizer").setup({
				"*", -- Highlight all files
				css = { css = true }, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
				html = { names = false }, -- Disable parsing "names" like Blue or Gray
			})
		end,
	},
	{
		"saghen/blink.cmp",
		version = "0.*",
		dependencies = {
			"L3MON4D3/LuaSnip",
			"saadparwaiz1/cmp_luasnip",
			-- lock compat to tagged versions, if you've also locked blink.cmp to tagged versions
			{ "saghen/blink.compat", version = "*", opts = { impersonate_nvim_cmp = true } },
			"roobert/tailwindcss-colorizer-cmp.nvim",
		},
		config = function()
			local blink = require("blink.cmp")
			local tailwind_formatter = require("tailwindcss-colorizer-cmp").formatter

			blink.setup({
				mapping = {
					["<CR>"] = {
						accept = {
							expand_snippet = function(snippet)
								require("luasnip").lsp_expand(snippet)
							end,
						},
					},
				},
				completion = {
					sources = {
						{ name = "nvim_lsp" },
						{ name = "luasnip" },
						{
							name = "buffer",
							option = {
								get_bufnrs = function()
									return vim.api.nvim_list_bufs()
								end,
							},
						},
					},
					formatting = {
						format = tailwind_formatter,
					},
				},
			})
		end,
	},
}
