return { "nvim-treesitter/nvim-treesitter", 
	build = ":TSUpdate", 
	config=function()
	local treesitter = require("nvim-treesitter.configs")
require('nvim-treesitter.install').compilers = { "clang" }

treesitter.setup({
    ensure_installed = { "c","java","python", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html" },
    highlight = { enable = true },
    indent = { enable = true },
})

	end
	}
