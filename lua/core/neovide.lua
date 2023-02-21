-- if the current instance of nvim is neovide, then set the colorscheme to nord
if vim.g.neovide then

  -- set guifont
  vim.g.guifont = { "DroidSansMono Nerd Font", "h14" }
  vim.opt.linespace = 0

  vim.g.neovide_fullscreen = true

  vim.g.neovide_input_use_logo = 1 -- enable use of the logo (cmd) key

  -- greet user
  vim.cmd "echo 'Welcome to neovide'"

  -- set colorscheme
  vim.cmd "colorscheme nord"

  -- neovide scale factor
  vim.g.neovide_scale_factor = 1.0

  -- copy and paste
  if vim.g.neovide then
    vim.keymap.set('n', '<D-s>', ':w<CR>') -- Save
    vim.keymap.set('v', '<D-c>', '"+y') -- Copy
    vim.keymap.set('n', '<D-v>', '"+P') -- Paste normal mode
    vim.keymap.set('v', '<D-v>', '"+P') -- Paste visual mode
    vim.keymap.set('c', '<D-v>', '<C-R>+') -- Paste command mode
    vim.keymap.set('i', '<D-v>', '<ESC>l"+Pli') -- Paste insert mode
  end
  
  -- helper function to change scale factor
  local change_scale_factor = function(delta)
    vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
    vim.cmd "echo neovide_scale_factor"
  end
  
  -- keybindings to change scale factor
  vim.keymap.set("n", "<C-=>", function()
    change_scale_factor(1.25)
  end)

  vim.keymap.set("n", "<C-->", function()
    change_scale_factor(1/1.25)
  end)

end

