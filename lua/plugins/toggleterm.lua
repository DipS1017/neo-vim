return {
	{
		"akinsho/toggleterm.nvim",
		version = "*", -- Automatically use the latest version
		config = function()
			require("toggleterm").setup({
				size = 10,
				open_mapping = [[<c-\>]], -- Toggle terminal with Ctrl+\
				hide_numbers = true,
				shade_filetypes = {},
				shade_terminals = true,
				shading_factor = "1", -- The degree by which to darken to terminal colour, default: 1 for dark, 3 for light
				start_in_insert = true,
				insert_mappings = true, -- whether or not the open mapping applies in insert mode
				terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
				persist_size = true,
				direction = "float", -- Can be 'vertical', 'horizontal', 'tab', 'float'
				close_on_exit = true, -- Close the terminal window when the process exits
				shell = vim.o.shell, -- Change the default shell
				float_opts = {
					border = "curved",
					winblend = 0,
					highlights = {
						border = "Normal",
						background = "Normal",
					},
				},
			})

			-- Custom function to open terminal in current file's directory
			local Terminal = require("toggleterm.terminal").Terminal

			-- Key mapping to close the terminal
			vim.api.nvim_set_keymap("n", "<leader>tc", ":ToggleTerm<CR>", { noremap = true, silent = true })

			-- Remap <Esc> to leave TERMINAL mode
			function _G.set_terminal_keymaps()
				local opts = { noremap = true }

				vim.api.nvim_buf_set_keymap(0, "t", "<Esc>", [[<C-\><C-n>]], opts)
			end

			vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
		end,
	},
}
