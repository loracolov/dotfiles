return {
    "vimwiki/vimwiki",

    init = function()
        vim.g.vimwiki_auto_chdir = 1
        vim.g.vimwiki_global_ext = 0
        vim.g.vimwiki_list = {
            {
                path = "~/Documents/Notes/",
                syntax = "markdown",
                ext = ".md",
            },
        }
    end
}

