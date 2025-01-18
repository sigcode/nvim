if vim.loader then
	vim.loader.enable()
end

-- _G.dd = function(...)
-- 	require("util.debug").dump(...)
-- end
-- vim.print = _G.dd

vim.opt.spell = true
vim.opt.spelllang = { "de_de", "en_us" }
vim.opt.spellcapcheck = ""

require("config.lazy")
