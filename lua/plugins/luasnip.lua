return {
	"L3MON4D3/LuaSnip",
  event = "InsertEnter",
	version = "v2.*",
	build = "make install_jsregexp",
	config = function()
		-- Somewhere in your Neovim startup, e.g. init.lua
		require("luasnip").config.set_config({ -- Setting LuaSnip config

			-- Use <Tab> (or some other key if you prefer) to trigger visual selection

			-- Auto-update text across repeated nodes
			update_events = "TextChanged,TextChangedI",

			-- Enable autotriggered snippets
			enable_autosnippets = true,

			-- Use Tab (or some other key if you prefer) to trigger visual selection
			store_selection_keys = "<Tab>",
		})

		-- ----------------------------------------------------------------------------
		-- Summary: When `LS_SELECT_RAW` is populated with a visual selection, the function
		-- returns an insert node whose initial text is set to the visual selection.
		-- When `LS_SELECT_RAW` is empty, the function simply returns an empty insert node.
		local get_visual = function(args, parent)
			if #parent.snippet.env.LS_SELECT_RAW > 0 then
				return sn(nil, i(1, parent.snippet.env.LS_SELECT_RAW))
			else -- If LS_SELECT_RAW is empty, return a blank insert node
				return sn(nil, i(1))
			end
		end
		-- ----------------------------------------------------------------------------

		-- Load snippets from ~/.config/nvim/LuaSnip/
		require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/LuaSnip/" })

		-- Yes, we're just executing a bunch of Vimscript, but this is the officially
		-- endorsed method; see https://github.com/L3MON4D3/LuaSnip#keymaps
		vim.cmd([[
" Use Tab to expand and jump through snippets
imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'
smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'

" Use Shift-Tab to jump backwards through snippets
imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
]])

		-- Abbreviations
		local ls = require("luasnip")
		local s = ls.snippet
		local sn = ls.snippet_node
		local t = ls.text_node
		local i = ls.insert_node
		local f = ls.function_node
		local d = ls.dynamic_node
		local fmt = require("luasnip.extras.fmt").fmt
		local fmta = require("luasnip.extras.fmt").fmta
		local rep = require("luasnip.extras").rep
	end,
}
