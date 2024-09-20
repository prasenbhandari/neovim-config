
return {
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.8',
		dependencies = { 'nvim-lua/plenary.nvim' },
		opts = {
			defaults = {
				mappings = {
					i = {
						-- Move through options in insert mode with Ctrl+j and Ctrl+k
						["<C-j>"] = require('telescope.actions').move_selection_next,
						["<C-k>"] = require('telescope.actions').move_selection_previous,
					},
					n = {
						-- Optional: Set the same keybindings for normal mode
						["<C-j>"] = require('telescope.actions').move_selection_next,
						["<C-k>"] = require('telescope.actions').move_selection_previous,
					},
				},
			},
		},
		keys = function()
			local builtin = require("telescope.builtin")
			return {
				{ "<leader>p", builtin.find_files, desc = "Find files with Telescope" },
				{ "<leader>f", builtin.live_grep, desc = "Live grep with Telescope" },
				{ "<leader>b", builtin.buffers, desc = "List buffers with Telescope" },
				{ "<leader>h", builtin.help_tags, desc = "Find help with Telescope" },
				{ "<leader>m", builtin.man_pages, desc = "Find man with Telescope" },
				{ "<leader>t", function() builtin.colorscheme({enable_preview = true}) end, desc = "Show available Colourschemes" }
			}
		end,
		config = function(_, opts)
            require("telescope").setup(opts)
            -- Load the `ui-select` extension after setting up Telescope
            require("telescope").load_extension("ui-select")
        end
	},

	{
		"nvim-telescope/telescope-ui-select.nvim",
	}
}

