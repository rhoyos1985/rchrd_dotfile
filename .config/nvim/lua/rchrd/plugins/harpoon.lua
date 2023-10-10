return {
  'ThePrimeagen/harpoon',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    -- set keymaps
    local keymap = vim.keymap -- for conciseness
    local mark = require('harpoon.mark')
    local ui = require('harpoon.ui')

    keymap.set('n', '<leader>hm', mark.add_file, { desc = 'Mark file with harpoon' })
    keymap.set('n', '<leader>hr', mark.rm_file, { desc = 'Remove file harpoon mark' })
    keymap.set('n', '<leader>hc', mark.clear_all, { desc = 'Clear all harpoon mark' })
    keymap.set('n', '<leader>hn', ui.nav_next, { desc = 'Go to next harpoon mark' })
    keymap.set('n', '<leader>hq', ui.toggle_quick_menu, { desc = 'Open harpoon menu' })
    keymap.set('n', '<leader>hp', ui.nav_prev, { desc = 'Go to previous harpoon mark' })
    keymap.set('n', '<leader>hh', function()
      ui.nav_file(1)
    end, { desc = 'Go to file 1' })
    keymap.set('n', '<leader>hj', function()
      ui.nav_file(2)
    end, { desc = 'Go to file 2' })
    keymap.set('n', '<leader>hk', function()
      ui.nav_file(3)
    end, { desc = 'Go to file 3' })
    keymap.set('n', '<leader>hl', function()
      ui.nav_file(4)
    end, { desc = 'Go to file 4' })
  end,
}
