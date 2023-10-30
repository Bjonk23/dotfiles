local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ps', builtin.find_files, {})
vim.keymap.set('n', '<leader>pf', builtin.live_grep, {})


require('telescope').setup{
    defaults = {
      vimrgrep_arguments = {
        'rg',
        '--color=never',
        '--no-heading',
        '--with-filename',
        '--line-number',
        '--column',
        '--smart-case',
        '--ignore-file',
        '.gitignore'
      }
    }
}
