return {
    "nvim-telescope/telescope.nvim",

    tag = "0.1.5",

    dependencies = {
        "nvim-lua/plenary.nvim"
    },

    config = function()
        require('telescope').setup({})

        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
        vim.keymap.set('n', '<C-p>', builtin.git_files, {})
        vim.keymap.set('n', '<C-f>', function()
            local word = vim.fn.expand("<cword>")
            require('telescope.builtin').current_buffer_fuzzy_find({ default_text = word, case_sensitive = true })
        end)
        vim.keymap.set('n', '<leader><C-f>', function()
            local current_line = vim.fn.getline(".")
            current_line = vim.fn.trim(current_line)
            require('telescope.builtin').current_buffer_fuzzy_find({ default_text = current_line, case_sensitive = true })
        end)
        vim.keymap.set('n', '<leader>pws', function()
            local word = vim.fn.expand("<cword>")
            require('telescope.builtin').grep_string({ default_text = word, case_sensitive = true })
        end)
        vim.keymap.set('n', '<leader>PWS', function()
            local current_line = vim.fn.getline(".")
            current_line = vim.fn.trim(current_line)
            builtin.grep_string({ search = current_line, case_sensitive = true })
        end)
        vim.keymap.set('n', '<leader>ps', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end)
        vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
    end
}

