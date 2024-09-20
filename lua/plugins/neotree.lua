return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
    dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
	opts = {
		window = {
			mappings = {
				["<Tab>"] = "open",
				["<cr>"] = "open",
			}
		}
	},

	keys = {
		{"<leader>.", "<cmd>Neotree toggle<cr>", desc = "Neotree"},
		{"<leader>f", "<cmd>Neotree focus<cr>" , desc = "Neotree focus"}
	}

}
