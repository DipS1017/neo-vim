return{

	{
	"williamboman/mason.nvim",
	config =function()
	require("mason").setup()
	end

},
	{
	"williamboman/mason-lspconfig.nvim",
	config=function()
	require('mason-lspconfig.install').compilers = { "clang" }
	require("mason-lspconfig").setup
		{

    ensure_installed = { "lua_ls", "rust_analyzer","clangd","cssls","cssmodules_ls" ,"somesass_ls","eslint","jsonls","jdtls","stylelint_lsp","html","tsserver","intelephense","pyright" },
}
		end
	},
	{
	"neovim/nvim-lspconfig",
	config=function()
	local lspconfig=require("lspconfig")
	lspconfig.tsserver.setup({})
	lspconfig.lua_ls.setup({})	
	lspconfig.pyright.setup({})	
	vim.keymap.set('n','K',vim.lsp.buf.hover,{})
	vim.keymap.set('n', 'gd',vim.lsp.buf.definition,{})		
	vim.keymap.set({'n','v'},'<leader>ca',vim.lsp.buf.code_action,{})		
	end
	}
}
