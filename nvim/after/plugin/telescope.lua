local telescope = require('telescope')

telescope.setup({
    defaults = {
        mappings = {
            i = {
                ['<C-u>'] = false,
                ['<C-d>'] = false,
            },
        },
        file_ignore_patterns = {
            "node_modules",
            "target"
        }
    },
})

pcall(telescope.load_extension, 'fzf')
