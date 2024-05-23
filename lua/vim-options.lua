vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.wo.number = true
vim.wo.relativenumber = true
vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

-- Function to determine the current hour
local function get_hour()
  return tonumber(os.date("%H"))
end

-- Function to set the background based on the time of day
local function set_background()
  local hour = get_hour()
  -- Set 'light' background for hours 8AM - 6PM (8 - 18)
  if hour >= 8 and hour < 18 then
    vim.o.background = 'light'
  -- Set 'dark' background for hours 6PM - 8AM (18 - 8)
  else
    vim.o.background = 'dark'
  end
end

-- Call the function to set the background
set_background()
