return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope-file-browser.nvim", "nvim-tree/nvim-web-devicons" },
    config = function(_, opts)
        local actions = require "telescope.actions"
        local fb_actions = require "telescope._extensions.file_browser.actions"

        require("telescope").setup({
            defaults = {
                sorting_strategy = "descending",
            },
            extensions = {
                file_browser = {
                    theme = "dropdown",
                    hijak_netrw = true,
                    path = "%:p:h",
                    respect_gitignore = false,
                    hidden = true,
                    grouped = true,
                    previewer = false,
                    initial_mode = "normal",
                    layout_config = { height = 40 },
                    mappings = {
                        ["n"] = {
                            ["h"] = fb_actions.goto_parent_dir,
                            ["l"] = actions.select_default,
                            ["n"] = fb_actions.create,
                        },
                    },
                },
            },
        })

      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "sf", builtin.find_files, {})
      vim.keymap.set("n", "sg", builtin.live_grep, {})
      vim.keymap.set("n", "sb", builtin.buffers, {})
      vim.keymap.set("n", "su", builtin.grep_string, {})
    end,
}
