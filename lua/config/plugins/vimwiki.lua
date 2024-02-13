return {
    "vimwiki/vimwiki",
    -- event = "BufEnter *.md",
    init = function()
        vim.g.vimwiki_list = {
            {
                path = "~/Documents/Notes/Vault/",
                syntax = "markdown",
                ext = ".md",
            },
        }
        vim.g.vimwiki_ext2syntax = {
            [".md"] = "markdown",
            [".markdown"] = "markdown",
            [".mdown"] = "markdown",
        }
    end
}

