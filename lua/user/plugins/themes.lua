local options = {
    nord_contrast = true,
    nord_borders = true,
    nord_disable_background = false,
    nord_cursorline_transparent = false,
    nord_italic = true,
    nord_bold = false
}

for k, v in pairs(options) do
    vim.g[k] = v
end

require("nord").set()
require('onedark').load()
