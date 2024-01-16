return {
      'nvim-treesitter/nvim-treesitter',
      build = ':TSUpdate',
      config = function()
            require("nvim-treesitter.configs").setup {
                ensure_installed = { 
                    "lua",
                    "markdown",
                    "bash",
                    -- "javascript", 
                    -- "html", 
                    -- "typescript"
                },
                highlight = { enable = true }
            }
        end
}
