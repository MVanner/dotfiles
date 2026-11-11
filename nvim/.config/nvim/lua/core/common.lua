-- show line numbers
vim.wo.number = true
-- enable mouse control
vim.opt.mouse = 'a'
vim.opt.encoding="utf-8"

-- disable the swap file
vim.opt.swapfile = false
 
-- set tab and indentation options
vim.opt.scrolloff = 7
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
 
vim.opt.fileformat = "unix"


-- reload buffers changed on disk (e.g. by Claude Code)
vim.opt.autoread = true
vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter", "TermLeave", "CursorHold" }, {
	command = "silent! checktime",
})
