-- set leader key to space
vim.g.mapleader = ' '

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set('i', 'jk', '<ESC>', { desc = 'Exit insert mode with jk' })

-- clear search highlights
keymap.set('n', '<leader>nh', ':nohl<CR>', { desc = 'Clear search highlights' })

-- delete single character without copying into register
-- keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set('n', '<leader>+', '<C-a>', { desc = 'Increment number' }) -- increment
keymap.set('n', '<leader>-', '<C-x>', { desc = 'Decrement number' }) -- decrement
-- window management
keymap.set('n', '<leader>sv', '<C-w>v', { desc = 'Split window vertically' }) -- split window vertically
keymap.set('n', '<leader>sh', '<C-w>s', { desc = 'Split window horizontally' }) -- split window horizontally
keymap.set('n', '<leader>se', '<C-w>=', { desc = 'Make splits equal size' }) -- make split windows equal width & height
keymap.set('n', '<leader>sx', '<cmd>close<CR>', { desc = 'Close current split' }) -- close current split window

keymap.set('n', '<leader>to', '<cmd>tabnew<CR>', { desc = 'Open new tab' }) -- open new tab
keymap.set('n', '<leader>tx', '<cmd>tabclose<CR>', { desc = 'Close current tab' }) -- close current tab
keymap.set('n', '<leader>tn', '<cmd>tabn<CR>', { desc = 'Go to next tab' }) --  go to next tab
keymap.set('n', '<leader>tp', '<cmd>tabp<CR>', { desc = 'Go to previous tab' }) --  go to previous tab
keymap.set('n', '<leader>tf', '<cmd>tabnew %<CR>', { desc = 'Open current buffer in new tab' }) --  move current buffer to new tab

-- special keymaps
keymap.set('v', '<leader>J', ":m '>+1<CR>gv=gv", { desc = 'Move selected line down' })
keymap.set('v', '<leader>K', ":m '<-2<CR>gv=gv", { desc = 'Move selected line up' })
keymap.set('n', '<leader>J', 'mzJ`z', { desc = 'Remove lines and up lines under cursor' })
keymap.set('n', '<leader>c', 'VY', { desc = 'Copy currently line' })
keymap.set('n', '<leader>md', '<C-d>zz', { desc = 'Move the cursor down to the middle' })
keymap.set('n', '<leader>mu', '<C-u>zz', { desc = 'Move the cursor up to the middle' })
keymap.set('n', '<leader>n', 'nzzzv', { desc = 'Leave the cursor of the middle in a search forward' })
keymap.set('n', '<leader>N', 'Nzzzv', { desc = 'Leave the cursor of the middle in a search backward' })
keymap.set('x', '<leader>p', '"_dP', { desc = 'Keep the buffer with last copy' })

keymap.set({ 'n', 'v' }, '<leader>y', [["+y]], { desc = 'Copy into the system clipboard in normal mode' })
keymap.set('n', '<leader>Y', [["+Y]], { desc = 'Copy into the system clipboard all the line in normal mode' })
keymap.set(
  'n',
  '<leader>s',
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = 'Easy replace in the current file' }
)

keymap.set('n', '<leader><leader>', '<cmd>so<CR>', { desc = ' Reload nvim without close window ' })
keymap.set('n', '<leader>qn', '<cmd>q<CR>', { desc = ' Close file or neo vim ' })
