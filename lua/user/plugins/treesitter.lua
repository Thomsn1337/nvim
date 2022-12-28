require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "python", "help" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    disable = {""},
    additional_vim_regex_highlighting = false,
  },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
    }
}
