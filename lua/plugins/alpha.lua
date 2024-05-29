return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "nvim-lua/plenary.nvim",
    {
      "rubiin/fortune.nvim",
      config = function()
        require("fortune").setup({
          content_type = "quotes",
          display_format = "short",
          max_width = 60,
          custom_quotes = {
            short = {
              { "Be yourself; everyone else is already taken.", "", "- Oscar Wilde" },
              { "Be the change that you wish to see in the world.", "", "- Mahatma Gandhi" },
              { "I have not failed. I've just found 10,000 ways that won't work.", "", "- Thomas A. Edison" },
              { "Never put off till tomorrow what may be done day after tomorrow just as well.", "", "- Mark Twain" },
              { "That which does not kill us makes us stronger.", "", "- Friedrich Nietzsche" },
              { "Everything you can imagine is real.", "", "- Pablo Picasso" },
              { "Nothing in life is to be feared, only to be understood. Now is the time to understand more, so that we may fear less.", "", "- Marie Curie" },
              { "An unexamined life is not worth living.", "", "- Socrates" },
              { "The only true wisdom is in knowing you know nothing.", "", "- Socrates" },
              { "Never memorize something that you can look up.", "", "- Albert Einstein" },
              { "People say nothing is impossible, but I do nothing every day.", "", "- A.A. Milne, Winnie-the-Pooh" },
              { "Hope clouds observation.", "", "- Frank Herbert, Dune" },
              { "An expert is a person who has made all the mistakes that can be made in a very narrow field.", "", "- Niels Bohr" },
              { "If I have seen further it is by standing on the shoulders of Giants.", "", "- Isaac Newton" },
              { "There will come a time when our descendants will be amazed that we did not know things that are so plain to them... Many discoveries are reserved for ages still to come, when memory of us will have been effaced.", "", "- Seneca, Natural Questions" },
              { "He who is not satisfied with a little is satisfied with nothing.", "", "- Epicurus" },
              { "I cannot teach anybody anything. I can only make them think", "", "- Socrates" },
              { "Those who know do not speak. Those who speak do not know.", "", "- Lao Tsu, Tao Teh Ching" },
              { "There is no easy way from the earth to the stars.", "", "- Seneca" },
              { "The aim of art is to represent not the outward appearance of things, but their inward significance.", "", "- Aristotle" },
              { "In theory, theory and practice are the same. In practice, they're not.", "", "- Yoggi Berra" },
              {
                "A good programmer is someone who always looks both ways before crossing a one-way street.",
                "",
                "- Doug Linder",
              },
              {
                "Any sufficiently advanced technology is indistinguishable from magic.",
                "",
                "- Arthur C. Clarke",
              },
              { "Nothing is more permanent than a temporary solution.", "", "- Fyodor Dostoevsky" },
              { "If, at first, you do not succeed, call it version 1.0.", "", "- Khayri R.R. Woulfe" },
              { "Experience is the name everyone gives to their mistakes.", "", "- Oscar Wilde" },
              {
                "I would rather die of passion than of boredom.",
                "",
                "- Vincent Van Gogh",
              },
              { "The happiness of your life depends upon the quality of your thoughts.", "", "- Marcus Aurelius" },
              { "No man ever steps in the same river twice, for it's not the same river and he's not the same man.", "", "- Heraclitus" },
              { "Success tends to create pride and blindness in the hearts of men, while suffering teaches them to be patient and strong.", "", "- Xenophon" },
              { "It's not what happens to you, but how you react to it that matters.", "", "- Epictetus" },
              { "We are what we repeatedly do. Excellence then is not an act, but a habit.", "", "- Aristotle" },
              { "All human wisdom is summed up in two words: wait and hope.", "", "- Alexandre Dumas, The Count of Monte Cristo" },
              { "In all chaos there is a cosmos, in all disorder a secret order.", "", "- Carl Gustav Jung" },
              { "Intelligence is what you use when you don't know what to do.", "", "- Jean Piaget" },
              { "This above all: to thine own self be true.", "", "- William Shakespeare, Hamlet" },
              {
                "Our doubts are traitors,",
                "And make us lose the good we oft might win,",
                "By fearing to attempt.",
                "",
                "- William Shakespeare, Measure for Measure"
              },
              {
                "Is all that we see or seem,",
                "But a dream within a dream?",
                "",
                "- Edgar Allan Poe, A Dream Within a Dream"
              },
              {
                "The woods are lovely, dark and deep,",
                "But I have promises to keep,",
                "And miles to go before I sleep,",
                "And miles to go before I sleep,",
                "",
                "- Robert Frost, Stopping by Woods on a Snowy Evening"
              },
              {
                "The snow of yesterday",
                "That fell like cherry blossoms",
                "Is water once again",
                "",
                "- Gozan"
              },
            },
            long = {
            },
          },
					custom_tips = {
						short = {
							{ "In normal mode, x will delete a character." },
							{ "In visual mode, x or d will delete a range of characters" },
							{ "Press V to enter Visual-Line mode. In V-Line mode, press K or J to move the selected lines up or down." },
							{ "Just as dd deletes the entire line, cc changes the entire line and yy yanks the entire line." },
							{ "Use :pwd to display the current working directory." },
              { "To delete from the current position to the end of the line, use D" },
              { "Use :checkhealth to diagnose common issues with your nvim setup." },
              { "To change from the current position to the end of the line, use C" },
              { "To yank from the current position to the end of the line, use Y" },
              { "Press . to repeat your last operation. For example, 'dd', 'ciw...', etc etc." },
              { "Press / to search forward, and ? to search backward." },
              { "Press % to jump between matching pairs of parenthesis, curly brackets or square brackets." },
              { "<C-u> and <C-d> scroll up and down by 1/2 pages. <C-b> and <C-f> scroll backward and forward by full pages." },
              { "Pressing } or { will move forward or backward by paragraph." },
              { "Press <leader>s to find and replace through the whole document the word the cursor is over." },
              { "<number>k or j goes up or down lines." },
              { "<number>G goes to the line with that number." },
              { "Use <C-h/j/k/l> to navigate between splits and tmux panes." },
              { "Use :g/pattern/d to delete lines containing a specific pattern" },
              { "Press g and wait for the which-key menu to show all of the options the powerful g operation can perform." },
              { ":-r <filename> will read (output) the contents of <filename> into the current buffer." },
              { "Use I to go into insert mode at the beggining of the line, and A to go into insert mode at the end (Larger versions of i and a). " },
						},
						long = {
              { "r<character> replaces the character the cursor is currently over with <character>. Press R to go into replace mode, and effectively type over the current text to replace it with what you want." },
              { "Thanks to the vim-illuminate plugin, the word your cursor is over and any other copies of that word in the current buffer are underlined. To quickly move between these words, use <M-n> or <M-p> (Alt + n/p)." },
              { "<leader>lg will open lazy git in a floating window. You should be in a directory with a git repository (includes .git/). Navigate the lazygit windows with your mouse or with h and l. Press ? to see help for a given window, and search that help with /." },
              { "Use ys as an operator to surround something with whatever you like. For example, ysiw( (you surround inside word with parenthesis). ss will surround the entire line, and in visual mode select the text you want to surround and press S followed by what you want the text to be surrounded with." },
              { "<leader>u opens/closes undotree, a plugin for visualizing the history of modifications to a given file." },
              { "Use :set spell spelllang=en to add english spellchecking (es for spanish, fr for french). Use the telescope feature (<leader>fs) to search for a correct spelling for any misspelled words." },
              { "Use :norm <commands> to execute a series of normal mode commands. Can be applied very powerfully with V-Line mode. E.g. select a number of lines, hit : and type norm followed by any vim operations you want to perform on all of those lines. It will look like :'<,'>norm ..." },
              { "Use <C-o> and <C-i> to move to the last and next cursor positions. This works even accross buffers. Very useful for getting back to where you where after doing something quick somewhere else." },
							{ "Use :! ... to perform any shell command without leaving nvim. For example, :-r !ls will read (output) the contents of ls (in the pwd) into the current buffer." },
              { "Perform :reg to see the contents of all the registers. To yank into a specific register, perform \"<register>y, similarly to paste from a given register \"<register>p and so on." },
              { "Tmux is set as the clipboard, so to copy and paste from nvim to another program: enter tmux copy mode by <prefix>[, then visually select the text you want to copy (using vim motions), and yank with y. Now you can paste into another program. To avoid copying the line numbers :set nonumber norelativenumber." },
              { "Use cib to change inside brackets (parenthesis). This works even if you're position is before the brackets, it will jump you to the next occurence of brackets. This kind of operation also works with Brackets (curly brackets), double quotes etc. It also works with various operations, such as d and v, and various motions, such as a (around)." },
              { "Press <C-c> to manually activate the autocompletion menu. Scroll down and up the menu either with <C-j/k> or <C-n/p>, accept text completions with <C-y> or <CR>, or by just continuing to type. Snippets can be expanded with tab, <C-y>, or <CR>. To close the autocompletion menu and delete any autocompleted text, press <C-e>." },
              { "Press <leader>as to save the session for the current working directory, <leader>ar will restore the last saved session. Sessions are also saved automatically." },
              { ":s/foo/bar/ replaces the first instance of foo with bar in the current line, adding a % in front of the s replaces the first instance of foo with bar in each line across the whole file, and putting a g at the end does so globally in each line. Adding a c at the end will ask for confirmation before each replacement." },
              { "Press q<letter> to start recording a macro for the <letter> key, then perform any possible sequence of vim operations / motions. When you are satisfied, press q again to finish recording the macro. For example, a simple macro to capitalize the first letter of the sentence could be recorded as such: qq (record on the q key) ^gUl (go to the first character of the line and capitalize) jq (go down a line and finish recording the macro). Play the macro by pressing @q, to replay the macro you can just press @@, to play the macro 5 times you can press 5@q or 5@@, and so on." },
              { "Press * to search forward through the document for the word the cursor is over, press # to do the same except with a backward search." },
              { "Press Alt + a number to jump to the tab (buffer) labeled with that number (buffer index). The large number in the tab is the buffer index and the subscript is the buffer number. Press Alt + . to move forward through the tabs (buffers), and Alt + , to move backwards." },
							{ "Press m to leap forward and M to leap backward. After pressing m or M, type the two character string corresponding to the position you want to leap to, check to see if you have leaped there in one go. If not, see and press the alphanumeric label over the position you want to leap to." },
							{ "Press <C-v> to enter Visual-block mode. In this mode you can select a column of text by pressing k or j. Press I to go into insert mode and make changes, then press escape to see your changes apply down the entire column." },
							{ "Press <Space> (the leader key) and wait to allow the which-key menu to open. View all of the possible keymappings. Use backspace to navigate up the which-key menu, and escape to exit." },
							{ "All of the telescope mappings are in the group <leader>f (f for 'find'), the which-key menu will automatically display the various options once you press <leader>f" },
						},
					},
				})
			end,
		},
	},
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")
		local v = vim.version()
		local version = " v" .. v.major .. "." .. v.minor .. "." .. v.patch

		dashboard.section.header.val = {
			[[                                                                     ]],
			[[       ████ ██████           █████      ██                     ]],
			[[      ███████████             █████                             ]],
			[[      █████████ ███████████████████ ███   ███████████   ]],
			[[     █████████  ███    █████████████ █████ ██████████████   ]],
			[[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
			[[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
			[[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
			version,
		}

		-- Set menu
		dashboard.section.buttons.val = {
      dashboard.button("SCP", "  > Activate Which-Key to See Keymappings", "<Space>"),
			dashboard.button("CTRL n", "󰐅  > Toggle File Explorer", "<cmd>Neotree<CR>"),
			dashboard.button("SPC ff", "󰭎  > Find File", "<cmd>Telescope find_files<CR>"),
			dashboard.button("SPC fo", "󱋡  > Find Recent File", "<cmd>Telescope oldfiles<CR>"),
			dashboard.button("SPC ar", "󰁯  > Restore Session for CWD", "<cmd>SessionRestore<CR>"),
			dashboard.button("SPC lg", "  > Open Lazygit", "<cmd>LazyGit<CR>"),
			dashboard.button("l", "󰒲  > Open Lazy NVIM Package Manager", "<cmd>Lazy<CR>"),
			dashboard.button("c", "  > CD to Configuration", ":cd ~/.config/nvim/<CR>"),
			dashboard.button("q", "󰩈  > Quit NVIM", "<cmd>qa<CR>"),
		}

		local fortune = require("fortune").get_fortune()
		dashboard.section.footer.val = fortune

		-- Send config to alpha
		alpha.setup(dashboard.opts)

		-- Disable folding on alpha buffer
		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
	end,
}
