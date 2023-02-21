function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
  vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

require("toggleterm").setup{
  -- size can be a number or function which is passed the current terminal
  size = 15,
  open_mapping = "<leader>j",
  direction = "horizontal"
}

local pomodoro = require("pomodoro")

local Terminal = require("toggleterm.terminal").Terminal

local music = Terminal:new({ cmd = "music_dropdown", direction = "float", size = 10, float_opts = { border = "curved" } });

function _music_toggle()
  pomodoro.start()
  music:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>m", "<cmd>lua _music_toggle()<CR>", {noremap = true, silent = true})

