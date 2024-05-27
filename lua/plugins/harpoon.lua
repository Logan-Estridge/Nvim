return {
  "ThePrimeagen/harpoon",
  event = "VeryLazy",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")
    -- REQUIRED
    harpoon:setup()
    -- REQUIRED

    vim.keymap.set("n", "<C-a>", function() harpoon:list():add() end, { desc = "󱡅 harpoon file"})
    vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "󱡅 open harpoon list"})

    vim.keymap.set("n", "<C-1>", function() harpoon:list():select(1) end, { desc = "󱡅 move to harpooned file 1"})
    vim.keymap.set("n", "<C-2>", function() harpoon:list():select(2) end, { desc =  "󱡅 move to harpooned file 2"})
    vim.keymap.set("n", "<C-3>", function() harpoon:list():select(3) end, { desc =  "󱡅 move to harpooned file 3"})
    vim.keymap.set("n", "<C-4>", function() harpoon:list():select(4) end, { desc =  "󱡅 move to harpooned file 4"})

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set("n", "<C-,>", function() harpoon:list():prev() end, { desc = "󱡅 move to previous harpooned file"})
    vim.keymap.set("n", "<C-.>", function() harpoon:list():next() end, { desc = "󱡅 move to next harpooned file"})
  end
}
