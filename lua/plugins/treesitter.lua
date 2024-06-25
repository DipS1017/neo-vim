return { "nvim-treesitter/nvim-treesitter", 
	build = ":TSUpdate", 
	config=function()
	local treesitter = require("nvim-treesitter.configs")
require('nvim-treesitter.install').compilers = { "clang" }

treesitter.setup({
			auto_install=true,
    highlight = { enable = true },
    indent = { enable = true },
})

	end
	}
