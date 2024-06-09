vim.g.mapleader = " "
local keymap = vim.keymap

-- nvim keymap
keymap.set("n","S",":w<CR>")
keymap.set("n","Q",":q<CR>")

-- -- neo-tree keymap
-- keymap.set("n","<leader>tt",":Neotree<CR>")

-- 切换buffer
keymap.set("n", "<leader>l", ":bnext<CR>")
keymap.set("n", "<leader>h", ":bprevious<CR>")

-- glance
keymap.set('n', 'gD', '<CMD>Glance definitions<CR>')
keymap.set('n', 'gR', '<CMD>Glance references<CR>')
keymap.set('n', 'gY', '<CMD>Glance type_definitions<CR>')
keymap.set('n', 'gM', '<CMD>Glance implementations<CR>')

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- telescopt
local builtin = require('telescope.builtin')
keymap.set('n', '<leader>ff', builtin.find_files, {})
keymap.set('n', '<leader>fg', builtin.live_grep, {})  -- 环境里要安装ripgrep
keymap.set('n', '<leader>fb', builtin.buffers, {})
keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- spacs bind
keymap.set("n","j","j:lua require('specs').show_specs()<CR>",{ noremap = true, silent = true })
keymap.set("n","k","k:lua require('specs').show_specs()<CR>",{ noremap = true, silent = true })
keymap.set("n","h","h:lua require('specs').show_specs()<CR>",{ noremap = true, silent = true })
keymap.set("n","l","l:lua require('specs').show_specs()<CR>",{ noremap = true, silent = true })
keymap.set('n', 'n', 'n:lua require("specs").show_specs()<CR>', { noremap = true, silent = true })
keymap.set('n', 'N', 'N:lua require("specs").show_specs()<CR>', { noremap = true, silent = true })

-- dap ui keymap
keymap.set('n', '<leader>dd', ':lua require("dap").continue()<CR>', { noremap = true, silent = true })
keymap.set('n', '<leader>u', ':lua require("dap").step_over()<CR>', { noremap = true, silent = true })
keymap.set('n', '<leader>i', ':lua require("dap").step_into()<CR>', { noremap = true, silent = true })
keymap.set('n', '<leader>o', ':lua require("dap").step_out()<CR>', { noremap = true, silent = true })
keymap.set('n', '<leader>aa', ':lua require("dap").terminate()<CR>', { noremap = true, silent = true })
keymap.set('n', '<leader>b', ':DapToggleBreakpoint<CR>', { noremap = true, silent = true })

-- yazi keymap
keymap.set('n', '<leader>tt', ':lua require("yazi").yazi()<CR>', {desc = "Open the file manager", noremap = true, silent = true })

-- symboloutline
keymap.set('n', '<C-k>', ':SymbolsOutline<CR>', { noremap = true, silent = true })

