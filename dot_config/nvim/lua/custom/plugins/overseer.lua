return {
	"stevearc/overseer.nvim",
	opts = {},
	keys = {
		{ "<leader>dot", "<cmd>OverseerToggle<cr>", desc = "Toggle Overseer" },
		{ "<leader>dor", "<cmd>OverseerRun<cr>", desc = "Run Task" },
		{ "<leader>dob", "<cmd>OverseerBuild<cr>", desc = "Build Task" },
		{ "<leader>doa", "<cmd>OverseerTaskAction<cr>", desc = "Task Action" },
	},
	config = function()
		require("overseer").setup()
		require("dap.ext.vscode").load_launchjs()
	end,
}
