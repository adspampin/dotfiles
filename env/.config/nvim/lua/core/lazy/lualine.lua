return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("lualine").setup({
            options = {
                theme = "tokyonight",
                globalstatus = true,
                component_separators = "",
                section_separators = "",
                disabled_filetypes = {
                    statusline = { "neo-tree" },
                },
            },
            sections = {
                lualine_a = { "mode" },
                lualine_b = { "branch", "diff" },
                lualine_c = { { "filename", path = 1 } },
                lualine_x = { "filetype" },
                lualine_y = { "progress" },
                lualine_z = { "location" },
            },
            extensions = { "neo-tree", "toggleterm", "fugitive" },
        })
    end,
}
