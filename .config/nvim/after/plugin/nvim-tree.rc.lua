local status, nvimTree = pcall(require, "nvim-tree")
if (not status) then return end


-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true


vim.keymap.set('n', '<leader>n', '<cmd>NvimTreeToggle<cr>', { silent = true })

nvimTree.setup({
  --  hijack_cursor = false,
  --  on_attach = function(bufnr)
  --    local bufmap = function(lhs, rhs, desc)
  --      vim.keymap.set('n', lhs, rhs, { buffer = bufnr, desc = desc })
  --    end
  --
  --    local api = require('nvim-tree.api')

  --     bufmap('L', api.node.open.edit, 'Expand forlder or go to file')
  --     bufmap('H', api.node.navigate.parent_close, 'Close parent folder')
  --     bufmap('gH', api.tree.toggle_hidden_filter, 'Toggle hiddle files')
  --  end,
  sort_by = "case_sensitive",
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
  view = {
    width = 30,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
})
