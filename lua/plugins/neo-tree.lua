return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        -- Настройка для отображения скрытых файлов
        require'nvim-web-devicons'.setup {
          -- globally enable default icons (default to false)
          -- will get overriden by `get_icons` option
          default = true;
        }

        require("neo-tree").setup({
            filesystem = {
                filtered_items = {
                    hide_dotfiles = false, -- Показывать скрытые файлы
                    hide_gitignored = false, -- Показывать файлы, игнорируемые git
                    hide_hidden = false, -- Показывать скрытые файлы и директории
                },
                follow_current_file = {
                    enabled = true,  -- Update to the new table format
                },
                group_empty_dirs = true,
                hijack_netrw_behavior = "open_current",
            },
            buffers = {
                follow_current_file = {
                    enabled = true,  -- Update to the new table format
                },
            },
            git_status = {
                window = {
                    position = "float",
                },
            },
        })

        -- Клавиша для открытия/закрытия Neo-tree
        vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal toggle<CR>', {})
    end
}
