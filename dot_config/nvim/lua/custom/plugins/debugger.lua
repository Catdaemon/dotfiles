return {
	{
		"mfussenegger/nvim-dap",
		lazy = true,
		-- Copied from LazyVim/lua/lazyvim/plugins/extras/dap/core.lua and
		-- modified.
		keys = {
			{
				"<leader>db",
				function()
					require("dap").toggle_breakpoint()
				end,
				desc = "Toggle Breakpoint",
			},

			{
				"<leader>dc",
				function()
					require("dap").continue()
				end,
				desc = "Continue",
			},

			{
				"<leader>dC",
				function()
					require("dap").run_to_cursor()
				end,
				desc = "Run to Cursor",
			},

			{
				"<leader>dT",
				function()
					require("dap").terminate()
				end,
				desc = "Terminate",
			},
			{
				"<leader>dn",
				"<cmd>DapNew<cr>",
				desc = "New Session",
			},
		},
	},
	{
		"jay-babu/mason-nvim-dap.nvim",
		opts = {},
		config = function()
			local dap = require("dap")

			dap.adapters.node2 = {
				type = "executable",
				command = "node",
				args = { os.getenv("HOME") .. "/dev/microsoft/vscode-node-debug2/out/src/nodeDebug.js" },
			}

			dap.adapters["node-terminal"] = {
				type = "executable",
				command = "node",
				args = { os.getenv("HOME") .. "/dev/microsoft/vscode-node-debug2/out/src/nodeDebug.js" },
			}

			dap.configurations.javascript = {
				{
					name = "Launch",
					type = "node2",
					request = "launch",
					program = "${file}",
					cwd = vim.fn.getcwd(),
					sourceMaps = true,
					protocol = "inspector",
					console = "integratedTerminal",
				},
				{
					-- For this to work you need to make sure the node process is started with the `--inspect` flag.
					name = "Attach to process",
					type = "node2",
					request = "attach",
					processId = require("dap.utils").pick_process,
				},
			}
		end,
		dependencies = {
			"mfussenegger/nvim-dap",
			"williamboman/mason.nvim",
		},
	},
	{
		"theHamsta/nvim-dap-virtual-text",
		config = true,
		dependencies = {
			"mfussenegger/nvim-dap",
		},
	},
	{
		"rcarriga/nvim-dap-ui",
		config = true,
		keys = {
			{
				"<leader>du",
				function()
					require("dapui").toggle({})
				end,
				desc = "Dap UI",
			},
		},
		dependencies = {
			"jay-babu/mason-nvim-dap.nvim",
			"leoluz/nvim-dap-go",
			"mfussenegger/nvim-dap-python",
			"nvim-neotest/nvim-nio",
			"theHamsta/nvim-dap-virtual-text",
		},
	},
}
