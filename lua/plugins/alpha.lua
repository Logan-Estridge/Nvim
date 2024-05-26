return {
  "goolord/alpha-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")
    local time = os.date("%H:%M")
    local date = os.date("%a %d %b")
    local v = vim.version()
    local version = " v" .. v.major .. "." .. v.minor .. "." .. v.patch

    dashboard.section.header.val = {
      [[                                                                       ]],
      [[                                                                     ]],
      [[       ████ ██████           █████      ██                     ]],
      [[      ███████████             █████                             ]],
      [[      █████████ ███████████████████ ███   ███████████   ]],
      [[     █████████  ███    █████████████ █████ ██████████████   ]],
      [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
      [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
      [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
      [[                                                                       ]],
    }

    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
      dashboard.button("CTRL n", "  > Toggle File Explorer", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("SPC ff", "󰱼  > Find File", "<cmd>Telescope find_files<CR>"),
      dashboard.button("SPC fo", "󰱼  > Find Recent File", "<cmd>Telescope oldfiles<CR>"),
      dashboard.button("SPC fg", "  > Live Grep", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("SPC ar", "󰁯  > Restore Session for CWD", "<cmd>SessionRestore<CR>"),
      dashboard.button("c", "  > CD to Configuration", ":cd ~/.config/nvim/<CR>"),
      dashboard.button("q", "  > Quit NVIM", "<cmd>qa<CR>"),
    }

    function centerText(text, width)
      local totalPadding = width - #text
      local leftPadding = math.floor(totalPadding / 2)
      local rightPadding = totalPadding - leftPadding
      return string.rep(" ", leftPadding) .. text .. string.rep(" ", rightPadding)
    end

    dashboard.section.footer.val = {
      centerText(time, 50),
      centerText(date, 50),
      centerText(version, 50),
    }

    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}
