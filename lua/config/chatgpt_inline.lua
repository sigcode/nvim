-- ~/.config/nvim/lua/chatgpt_inline.lua
local M = {}

function M.complete_code()
	-- Get the current buffer and cursor position
	local bufnr = vim.api.nvim_get_current_buf()
	local row, col = unpack(vim.api.nvim_win_get_cursor(0))

	-- Call ChatGPT and get the response (this is a simplified example)
	-- You need to implement the actual request to ChatGPT and handle the response.
	local response = vim.fn.system("chatgpt_prompt") -- This needs to be replaced with actual ChatGPT API call

	-- Insert the response at the current cursor position
	vim.api.nvim_buf_set_text(bufnr, row - 1, col, row - 1, col, { response })
end

return M
