-- 默认不开启nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("neo-tree").setup({
  auto_close = true,
  close_if_last_window=true,
  window = {
    position = "left",
    width = 30,
  },
  event_handlers = {{
    event = "file_opened",
    handler = function(file_path)
    -- auto close
    -- vimc.cmd("Neotree close")
    -- OR
    require("neo-tree.command").execute({ action = "close" })
    end
  },}
})

