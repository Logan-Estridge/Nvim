return {
  "lervag/vimtex",
  ft = "tex",
  config = function()
    -- This is necessary for VimTeX to load properly. The "indent" is optional.
    -- Note that most plugin managers will do this automatically.
    vim.cmd('filetype plugin indent on')

    -- This enables Vim's and Neovim's syntax-related features. Without this, some
    -- VimTeX features will not work (see ":help vimtex-requirements" for more
    -- info).
    vim.cmd('syntax enable')

    -- Viewer options: One may configure the viewer either by specifying a built-in
    -- viewer method:
    vim.g.vimtex_view_method = 'zathura'

    vim.g.vimtex_view_general_viewer = 'okura'
    vim.g.vimtex_view_general_options = '-reuse-instance @pdf'
    vim.g.vimtex_view_general_latexmk = '-reuse-instance'

    -- VimTeX uses latexmk as the default compiler backend. If you use it, which is
    -- strongly recommended, you probably don't need to configure anything. If you
    -- want another compiler backend, you can change it as follows. The list of
    -- supported backends and further explanation is provided in the documentation,
    -- see ":help vimtex-compiler".
    vim.g.vimtex_compiler_method = 'latexmk'

    -- Most VimTeX mappings rely on localleader and this can be changed with the
    -- following line. The default is usually fine and is the symbol "\".
    -- vim.g.maplocalleader = ','

    vim.g.vimtex_imaps_enabled = 0
  end
}
