vim.g.loaded_netrw = 0
vim.g.loaded_netrwPlugin = 1

local nvim_tree = require("nvim-tree")

nvim_tree.setup {
    disable_netrw = true,
    hijack_netrw = true,
    open_on_setup = true,
    open_on_setup_file = true,
    auto_reload_on_write = true,
    sort_by = "case_sensitive",
    hijack_unnamed_buffer_when_opening = true,
    hijack_cursor = true,
    view = {
        width = 30,
        hide_root_folder = false,
        side = "left",
    }
}
