local dotnet = require("easy-dotnet")
dotnet.setup()

local dap = require("dap")
local map = vim.keymap.set

-- Dotnet
map("n", "<leader>Dr", dotnet.run, { desc = "Dotnet run" })
map("n", "<leader>Dd", dotnet.debug, { desc = "Dotnet debug" })
map("n", "<leader>Db", dotnet.build_quickfix, { desc = "Dotnet build (quickfix)" })
map("n", "<leader>Dt", dotnet.testrunner, { desc = "Dotnet test runner" })
map("n", "<leader>Dp", dotnet.add_package, { desc = "Dotnet add package" })
map("n", "<leader>Ds", dotnet.secrets, { desc = "Dotnet user secrets" })

-- Debugging
map("n", "<F5>", dap.continue, { desc = "Debug continue" })
map("n", "<F10>", dap.step_over, { desc = "Debug step over" })
map("n", "<F11>", dap.step_into, { desc = "Debug step into" })
map("n", "<S-F11>", dap.step_out, { desc = "Debug step out" })
map("n", "<leader>db", dap.toggle_breakpoint, { desc = "Toggle breakpoint" })
map("n", "<leader>dr", dap.repl.toggle, { desc = "Debug REPL" })
map("n", "<leader>dt", dap.terminate, { desc = "Debug terminate" })
