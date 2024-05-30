vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.wo.number = true
vim.wo.relativenumber = true

local opt = vim.opt

opt.backspace = '2'
opt.showcmd = true
opt.laststatus = 2
opt.autowrite = true
opt.cursorline = true
opt.autoread = true

opt.tabstop = 2
opt.shiftwidth = 2
opt.shiftround = true
opt.expandtab = true

opt.ignorecase = true
opt.smartcase = true
opt.scrolloff = 10

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

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
