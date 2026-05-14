return {
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },
  { "neovim/nvim-lspconfig" },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
	    require("mason").setup()
	    require("mason-lspconfig").setup(require("after.lsp"))

	    local capabilities = require("cmp_nvim_lsp").default_capabilities()
	    local lspconfig = require("lspconfig")
	    lspconfig.clangd.setup({ capabilities = capabilities })
	    lspconfig.zls.setup({ capabilities = capabilities })
    end,

  },
}
