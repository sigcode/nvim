local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	spec = {
		-- add LazyVim and import its plugins
		{
			"LazyVim/LazyVim",
			import = "lazyvim.plugins",
			opts = {
				colorscheme = "gruvbox-material",
				news = {
					lazyvim = true,
					neovim = true,
				},
			},
		},
		-- import any extras modules here
		{ import = "lazyvim.plugins.extras.linting.eslint" },
		{ import = "lazyvim.plugins.extras.formatting.prettier" },
		{ import = "lazyvim.plugins.extras.lang.typescript" },
		{ import = "lazyvim.plugins.extras.lang.json" },
		-- { import = "lazyvim.plugins.extras.lang.markdown" },
		--		{ import = "lazyvim.plugins.extras.lang.rust" },
		{ import = "lazyvim.plugins.extras.lang.tailwind" },
		-- { import = "lazyvim.plugins.extras.coding.copilot" },
		-- { import = "lazyvim.plugins.extras.dap.core" },
		-- { import = "lazyvim.plugins.extras.vscode" },
		--{ import = "lazyvim.plugins.extras.util.mini-hipatterns" },
		-- { import = "lazyvim.plugins.extras.test.core" },
		-- { import = "lazyvim.plugins.extras.coding.yanky" },
		-- { import = "lazyvim.plugins.extras.editor.mini-files" },
		-- { import = "lazyvim.plugins.extras.util.project" },
		{ import = "plugins" },
	},
	defaults = {
		-- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
		-- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
		lazy = false,
		-- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
		-- have outdated releases, which may break your Neovim install.
		version = false, -- always use the latest git commit
		-- version = "*", -- try installing the latest stable version for plugins that support semver
	},
	dev = {
		path = "~/.ghq/github.com",
	},
	checker = { enabled = true }, -- automatically check for plugin updates
	performance = {
		cache = {
			enabled = true,
			-- disable_events = {},
		},
		rtp = {
			-- disable some rtp plugins
			disabled_plugins = {
				"gzip",
				-- "matchit",
				-- "matchparen",
				"netrwPlugin",
				"rplugin",
				"neotree",
				"tarPlugin",
				"tohtml",
				"tutor",
				"zipPlugin",
			},
		},
	},
	ui = {
		custom_keys = {
			["<localleader>d"] = function(plugin)
				dd(plugin)
			end,
		},
	},
	debug = false,
})

require("bufferline").setup({
	options = {
		offsets = {
			{
				filetype = "NvimTree",
				text = "Nvim Tree",
				separator = true,
				text_align = "left",
			},
		},
		modified_icon = "●",
		show_close_icon = true,
		show_buffer_close_icons = true,
		separator_style = "slant",
		color_indicator = true,
		diagnostics = "nvim_lsp",
		hover = {
			enabled = true,
			delay = 200,
			reveal = { "close" },
		},
	},
})
-- local cmp = require("cmp")
--
-- cmp.setup({
-- 	mapping = {
-- 		["<C-d>"] = cmp.mapping.scroll_docs(-4),
-- 		["<C-f>"] = cmp.mapping.scroll_docs(4),
-- 		["<C-Space>"] = cmp.mapping.complete(),
-- 		["<Tab>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
-- 		["<S-Tab>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
-- 		["<C-e>"] = cmp.mapping.close(),
-- 	},
-- 	sources = {
-- 		{ name = "chatgpt" },
-- 		{ name = "nvim_lsp" },
-- 		{ name = "tabnine" },
-- 		{ name = "buffer" },
-- 		{ name = "path" },
-- 		{ name = "treesitter" },
-- 		{ name = "git" },
-- 	},
-- })
local nvim_lsp = require("lspconfig")

local on_attach = function(client, bufnr)
	local buf_set_keymap = vim.api.nvim_buf_set_keymap
	local opts = { noremap = true, silent = true }

	-- Mappings.
	buf_set_keymap(bufnr, "n", "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>", opts)
	-- Other mappings...
end

require("obsidian").setup({
	workspaces = {
		{
			name = "personal",
			path = "~/vaults/personal",
		},
		{
			name = "work",
			path = "~/vaults/work",
			-- Optional, override certain settings.
			overrides = {
				notes_subdir = "notes",
			},
		},
	},
})
