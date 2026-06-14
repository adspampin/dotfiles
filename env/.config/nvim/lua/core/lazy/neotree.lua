return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        require("neo-tree").setup({
            close_if_last_window = true,
            enable_git_status = true,
            enable_diagnostics = true,
            popup_border_style = "rounded",
            source_selector = {
                winbar = true,
                content_layout = "center",
                tabs_layout = "equal",
                show_separator_on_edge = true,
                sources = {
                    { source = "filesystem", display_name = "  " },
                    { source = "buffers", display_name = "  " },
                    { source = "git_status", display_name = "  " },
                },
            },
            window = {
                position = "left",
                width = 35,
                mapping_options = {
                    noremap = true,
                    nowait = true,
                },
                mappings = {
                    ["S"] = "open_split",
                    ["s"] = "open_vsplit",
                },
            },
            filesystem = {
                filtered_items = {
                    visible = false,
                    hide_dotfiles = false,
                    hide_gitignored = true,
                },
                follow_current_file = {
                    enabled = true,
                },
                use_libuv_file_watcher = true,
                group_empty_dirs = true,
                renderers = {
                    directory = {
                        { "indent" },
                        { "icon" },
                        { "name", zindex = 10 },
                        { "diagnostics", errors_only = true, zindex = 20, align = "right", hide_when_expanded = true },
                        { "git_status", zindex = 20, align = "right", hide_when_expanded = true },
                    },
                    file = {
                        { "indent" },
                        { "icon" },
                        { "name", zindex = 10 },
                        { "diagnostics", zindex = 20, align = "right" },
                        { "git_status", zindex = 20, align = "right" },
                    },
                },
            },
            buffers = {
                renderers = {
                    file = {
                        { "indent" },
                        { "icon" },
                        { "name", zindex = 10 },
                        { "bufnr", zindex = 10, align = "right" },
                        { "modified", zindex = 20, align = "right" },
                        { "diagnostics", zindex = 20, align = "right" },
                        { "git_status", zindex = 20, align = "right" },
                    },
                },
            },
            default_component_configs = {
                indent = {
                    with_expanders = true,
                    indent_size = 2,
                    padding = 1,
                    with_markers = true,
                    indent_marker = "│",
                    last_indent_marker = "└",
                    expander_collapsed = "",
                    expander_expanded = "",
                    expander_highlight = "NeoTreeExpander",
                },
                icon = {
                    folder_closed = "",
                    folder_open = "",
                    folder_empty = "",
                    folder_empty_open = "",
                    default = "",
                    highlight = "NeoTreeFileIcon",
                },
                modified = {
                    symbol = "",
                    highlight = "NeoTreeModified",
                },
                name = {
                    trailing_slash = false,
                    use_git_status_colors = true,
                    highlight = "NeoTreeFileName",
                },
                git_status = {
                    symbols = {
                        added = "",
                        deleted = "",
                        renamed = "",
                        untracked = "",
                        ignored = "",
                        unstaged = "",
                        staged = "",
                        conflict = "",
                    },
                },
            },
        })

        vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<cr>", { desc = "Toggle file tree" })
        vim.keymap.set("n", "<leader>E", "<cmd>Neotree reveal<cr>", { desc = "Reveal file in tree" })
    end,
}
