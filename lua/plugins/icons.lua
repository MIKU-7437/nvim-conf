
-- Иконки
return {
  'kyazdani42/nvim-tree.lua',
  requires = {
    'kyazdani42/nvim-web-devicons', -- Иконки файлов
  },
  config = function()
    require'nvim-tree'.setup {
      -- Ваши настройки для nvim-tree
      view = {
        width = 30,
        side = 'left',
      },
      filters = {
        dotfiles = false,
      },
      git = {
        enable = true,
      },
    }
    -- Клавиша для открытия/закрытия nvim-tree
    vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
  end
}
