return {
    "vimwiki/vimwiki",
    -- event = "BufEnter *.md",
    init = function()
        vim.g.vimwiki_global_ext = 0
        vim.g.vimwiki_list = {
            {
                path = "~/Documents/Notes/Vault/",
                syntax = "markdown",
                ext = ".md",
            },
        }
    end
}

