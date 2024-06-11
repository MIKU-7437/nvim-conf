return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            auto_install = true,
            ensure_installed = {"python", "html", "javascript", "toml", "ini"},
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
            indent = {
                enable = true
            },
        })
        -- For handling .conf files, you might want to link them to a similar language parser
        vim.api.nvim_exec([[
            autocmd BufRead,BufNewFile *.conf set filetype=toml
        ]], false)
    end
}

