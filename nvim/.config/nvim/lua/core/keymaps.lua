local map = vim.keymap.set

-- Claude Code
map("n", "<leader>ac", "<cmd>ClaudeCode<cr>", { desc = "Toggle Claude" })
map("n", "<leader>af", "<cmd>ClaudeCodeFocus<cr>", { desc = "Focus Claude" })
map("n", "<leader>ar", "<cmd>ClaudeCode --resume<cr>", { desc = "Resume Claude" })
map("n", "<leader>aC", "<cmd>ClaudeCode --continue<cr>", { desc = "Continue Claude" })
map("n", "<leader>am", "<cmd>ClaudeCodeSelectModel<cr>", { desc = "Select model" })
map("n", "<leader>ab", "<cmd>ClaudeCodeAdd %<cr>", { desc = "Add buffer" })
map("v", "<leader>as", "<cmd>ClaudeCodeSend<cr>", { desc = "Send selection" })
map("n", "<leader>aa", "<cmd>ClaudeCodeDiffAccept<cr>", { desc = "Accept diff" })
map("n", "<leader>ad", "<cmd>ClaudeCodeDiffDeny<cr>", { desc = "Reject diff" })
map({ "n", "t" }, "<C-,>", "<cmd>ClaudeCode<cr>", { desc = "Toggle Claude" })
map("t", "<C-h>", [[<C-\><C-n><C-w>h]], { desc = "Window left" })
map("t", "<C-l>", [[<C-\><C-n><C-w>l]], { desc = "Window right" })
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "oil", "snacks_picker_list" },
	callback = function(ev)
		map("n", "<leader>as", "<cmd>ClaudeCodeTreeAdd<cr>", { buffer = ev.buf, desc = "Add file to Claude" })
	end,
})


-- Oil.nvim
map("n", "<leader>e", "<CMD>Oil<CR>", { desc = "Open parent directory" })


-- Snacks Picker
local function pick(source, opts)
  return function() Snacks.picker[source](opts) end
end

map("n", "<leader><space>", pick("smart"), { desc = "Smart Find Files" })
map("n", "<leader>,", pick("buffers"), { desc = "Buffers" })
map("n", "<leader>/", pick("grep"), { desc = "Grep" })
map("n", "<leader>:", pick("command_history"), { desc = "Command History" })
map("n", "<leader>n", pick("notifications"), { desc = "Notification History" })
map("n", "<leader>E", function() Snacks.explorer() end, { desc = "File Explorer" })

-- find
map("n", "<leader>fb", pick("buffers"), { desc = "Buffers" })
map("n", "<leader>fc", pick("files", { cwd = vim.fn.stdpath("config") }), { desc = "Find Config File" })
map("n", "<leader>ff", pick("files"), { desc = "Find Files" })
map("n", "<leader>fg", pick("git_files"), { desc = "Find Git Files" })
map("n", "<leader>fp", pick("projects"), { desc = "Projects" })
map("n", "<leader>fr", pick("recent"), { desc = "Recent" })

-- git
--map("n", "<leader>gb", pick("git_branches"), { desc = "Git Branches" })
--map("n", "<leader>gl", pick("git_log"), { desc = "Git Log" })
--map("n", "<leader>gL", pick("git_log_line"), { desc = "Git Log Line" })
--map("n", "<leader>gs", pick("git_status"), { desc = "Git Status" })
--map("n", "<leader>gS", pick("git_stash"), { desc = "Git Stash" })
--map("n", "<leader>gd", pick("git_diff"), { desc = "Git Diff (Hunks)" })
--map("n", "<leader>gf", pick("git_log_file"), { desc = "Git Log File" })

-- github
--map("n", "<leader>gi", pick("gh_issue"), { desc = "GitHub Issues (open)" })
--map("n", "<leader>gI", pick("gh_issue", { state = "all" }), { desc = "GitHub Issues (all)" })
--map("n", "<leader>gp", pick("gh_pr"), { desc = "GitHub Pull Requests (open)" })
--map("n", "<leader>gP", pick("gh_pr", { state = "all" }), { desc = "GitHub Pull Requests (all)" })

-- grep
map("n", "<leader>sb", pick("lines"), { desc = "Buffer Lines" })
map("n", "<leader>sB", pick("grep_buffers"), { desc = "Grep Open Buffers" })
map("n", "<leader>sg", pick("grep"), { desc = "Grep" })
map({ "n", "x" }, "<leader>sw", pick("grep_word"), { desc = "Visual selection or word" })

-- search
--map("n", '<leader>s"', pick("registers"), { desc = "Registers" })
--map("n", "<leader>s/", pick("search_history"), { desc = "Search History" })
--map("n", "<leader>sa", pick("autocmds"), { desc = "Autocmds" })
--map("n", "<leader>sc", pick("command_history"), { desc = "Command History" })
--map("n", "<leader>sC", pick("commands"), { desc = "Commands" })
--map("n", "<leader>sd", pick("diagnostics"), { desc = "Diagnostics" })
--map("n", "<leader>sD", pick("diagnostics_buffer"), { desc = "Buffer Diagnostics" })
--map("n", "<leader>sh", pick("help"), { desc = "Help Pages" })
--map("n", "<leader>sH", pick("highlights"), { desc = "Highlights" })
--map("n", "<leader>si", pick("icons"), { desc = "Icons" })
--map("n", "<leader>sj", pick("jumps"), { desc = "Jumps" })
--map("n", "<leader>sk", pick("keymaps"), { desc = "Keymaps" })
--map("n", "<leader>sl", pick("loclist"), { desc = "Location List" })
--map("n", "<leader>sm", pick("marks"), { desc = "Marks" })
--map("n", "<leader>sM", pick("man"), { desc = "Man Pages" })
--map("n", "<leader>sq", pick("qflist"), { desc = "Quickfix List" })
--map("n", "<leader>sR", pick("resume"), { desc = "Resume" })
--map("n", "<leader>su", pick("undo"), { desc = "Undo History" })
--map("n", "<leader>uC", pick("colorschemes"), { desc = "Colorschemes" })

-- LSP
map("n", "gd", pick("lsp_definitions"), { desc = "Goto Definition" })
map("n", "gD", pick("lsp_declarations"), { desc = "Goto Declaration" })
map("n", "gr", pick("lsp_references"), { nowait = true, desc = "References" })
map("n", "gI", pick("lsp_implementations"), { desc = "Goto Implementation" })
map("n", "gy", pick("lsp_type_definitions"), { desc = "Goto T[y]pe Definition" })
map("n", "gai", pick("lsp_incoming_calls"), { desc = "C[a]lls Incoming" })
map("n", "gao", pick("lsp_outgoing_calls"), { desc = "C[a]lls Outgoing" })
map("n", "<leader>ss", pick("lsp_symbols"), { desc = "LSP Symbols" })
map("n", "<leader>sS", pick("lsp_workspace_symbols"), { desc = "LSP Workspace Symbols" })
