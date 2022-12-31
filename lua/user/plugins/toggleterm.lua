local toggleterm = require("toggleterm")

vim.o.shell = "/bin/fish"

toggleterm.setup({
    size = 20,
    open_mapping = [[<C-t>]],
    hide_numbers = true,
    start_in_insert = true,
    insert_mappings = true,
    terminal_mappings = true,
    persist_size = true,
    direction = "float",
    close_on_exit = true,
    shell = "fish"
})
