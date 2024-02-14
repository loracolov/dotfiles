-- Set markdown files to filetype=markdown on open.
vim.api.nvim_create_autocmd(
    "BufWinEnter", { 
        pattern = "*.md",
        command = "set filetype=markdown",
    }
)

-- Instert template in new Vimwiki diary files
vim.api.nvim_create_autocmd(
    "BufNewFile",
    {
        pattern = "/Users/rileyvogel/Documents/Notes/diary/*.md",
        command = "silent 0r !vimwiki_diary_template '%'",
    }
)

