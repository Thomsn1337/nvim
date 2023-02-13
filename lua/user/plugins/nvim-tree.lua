vim.g.loaded_netrw = 0
vim.g.loaded_netrwPlugin = 1

local nvim_tree = require("nvim-tree")
local function open_nvim_tree(data)
  local directory = vim.fn.isdirectory(data.file) == 1
  if not directory then
    return
  end

  vim.cmd.cd(data.file)
  require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

nvim_tree.setup {
    disable_netrw = true,
    hijack_netrw = true,
--    open_on_setup = true,
--    open_on_setup_file = true,
    auto_reload_on_write = true,
    sort_by = "case_sensitive",
    hijack_unnamed_buffer_when_opening = true,
    hijack_cursor = true,
    view = {
        width = 30,
        hide_root_folder = false,
        side = "left",
        mappings = {
            list = {
                {key = "<C-]>", action = ""},
                {key = "<C-d>", action = "cd"}
            }
        }
    },
    update_focused_file = {
        enable = true,
        update_cwd = true,
    }
}
