function ColorMyPencils(color)
	color = color or "tokyonight-night"
	vim.cmd.colorscheme(color)

	-- Main editor stays transparent
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })

	-- Sidebar background (like VS Code explorer)
	vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "#16161e" })
	vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "#16161e" })
	vim.api.nvim_set_hl(0, "NeoTreeEndOfBuffer", { bg = "#16161e", fg = "#16161e" })
	vim.api.nvim_set_hl(0, "NeoTreeRootName", { fg = "#c084fc", bold = true, bg = "#16161e" })
	vim.api.nvim_set_hl(0, "NeoTreeDirectoryName", { fg = "#a9b1d6", bg = "#16161e" })
	vim.api.nvim_set_hl(0, "NeoTreeFileName", { fg = "#c0caf5", bg = "#16161e" })
	vim.api.nvim_set_hl(0, "NeoTreeFileIcon", { bg = "#16161e" })
	vim.api.nvim_set_hl(0, "NeoTreeGitAdded", { fg = "#9ece6a", bg = "#16161e" })
	vim.api.nvim_set_hl(0, "NeoTreeGitModified", { fg = "#e0af68", bg = "#16161e" })
	vim.api.nvim_set_hl(0, "NeoTreeGitDeleted", { fg = "#f7768e", bg = "#16161e" })
	vim.api.nvim_set_hl(0, "NeoTreeGitUntracked", { fg = "#7aa2f7", bg = "#16161e" })
	vim.api.nvim_set_hl(0, "NeoTreeIndentMarker", { fg = "#3b4261", bg = "#16161e" })
	vim.api.nvim_set_hl(0, "NeoTreeExpander", { fg = "#c084fc", bg = "#16161e" })
	vim.api.nvim_set_hl(0, "NeoTreeTitleBar", { fg = "#16161e", bg = "#c084fc", bold = true })
	vim.api.nvim_set_hl(0, "NeoTreeFloatTitle", { fg = "#c084fc", bg = "#16161e", bold = true })
	vim.api.nvim_set_hl(0, "NeoTreeFloatBorder", { fg = "#c084fc", bg = "#16161e" })

	-- Terminal background (like VS Code bottom panel)
	vim.api.nvim_set_hl(0, "Terminal", { bg = "#16161e" })

	-- Bright purple borders everywhere
	vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#c084fc", bg = "none", bold = true })
	vim.api.nvim_set_hl(0, "VertSplit", { fg = "#c084fc", bg = "none", bold = true })
	vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#c084fc", bg = "none", bold = true })
	vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = "#c084fc", bg = "none" })
	vim.api.nvim_set_hl(0, "TelescopePromptBorder", { fg = "#c084fc", bg = "none" })
	vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { fg = "#c084fc", bg = "none" })
	vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { fg = "#c084fc", bg = "none" })
	vim.api.nvim_set_hl(0, "WhichKeyBorder", { fg = "#c084fc", bg = "none" })
	vim.api.nvim_set_hl(0, "TroubleBorder", { fg = "#c084fc", bg = "none" })

	-- Sign column and cursor line
	vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
	vim.api.nvim_set_hl(0, "CursorLine", { bg = "#1f2335" })
	vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#c084fc", bg = "none", bold = true })
	vim.api.nvim_set_hl(0, "LineNr", { fg = "#3b4261", bg = "none" })

	-- Statusline
	vim.api.nvim_set_hl(0, "StatusLine", { fg = "#c0caf5", bg = "#16161e" })
	vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#565f89", bg = "#16161e" })
end

return {

    {
        "erikbackman/brightburn.vim",
    },

    {
        "folke/tokyonight.nvim",
        lazy = false,
        opts = {},
        config = function()
            ColorMyPencils()
        end
    },
    {
        "ellisonleao/gruvbox.nvim",
        name = "gruvbox",
        config = function()
            require("gruvbox").setup({
                terminal_colors = true,
                undercurl = true,
                underline = false,
                bold = true,
                italic = {
                    strings = false,
                    emphasis = false,
                    comments = false,
                    operators = false,
                    folds = false,
                },
                strikethrough = true,
                invert_selection = false,
                invert_signs = false,
                invert_tabline = false,
                invert_intend_guides = false,
                inverse = true,
                contrast = "",
                palette_overrides = {},
                overrides = {},
                dim_inactive = false,
                transparent_mode = false,
            })
        end,
    },
    {
        "folke/tokyonight.nvim",
        config = function()
            require("tokyonight").setup({
                style = "storm",
                transparent = true,
                terminal_colors = true,
                styles = {
                    comments = { italic = false },
                    keywords = { italic = false },
                    sidebars = "dark",
                    floats = "dark",
                },
            })
        end
    },

    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require('rose-pine').setup({
                disable_background = true,
                styles = {
                    italic = false,
                },
            })

            ColorMyPencils();
        end
    },


}
