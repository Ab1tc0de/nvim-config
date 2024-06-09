vim.opt.termguicolors = true
local bufferline = require("bufferline")
bufferline.setup {
    options = {
        -- 使用 nvim 内置lsp
        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(count, level)
          local icon = level:match("error") and " " or " "
          return " " .. icon .. count
        end,
        -- 左侧让出 nvim-tree 的位置
        offsets = {{
            filetype = "neo-tree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left"
        }},
        style_preset = {
            bufferline.style_preset.no_italic,
            bufferline.style_preset.no_bold
        },
        separator_style = "thick",
        highlights = {
        fill = {
            bg = {
                attribute = "fg",
                highlight = "Pmenu"
              }
            }
        },
    }
}


