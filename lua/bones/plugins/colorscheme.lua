return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  
  config = function()
	  require("tokyonight").setup({
	    style = "night",
	    transparent = true
	  })
  vim.cmd([[colorscheme tokyonight]])
  vim.cmd([[highlight TelescopeBorder guibg=none]])
  vim.cmd([[highlight TelescopeTitle guibg=none]])
  vim.cmd([[highlight TelescopeNormal guibg=none]])
  end,
}

