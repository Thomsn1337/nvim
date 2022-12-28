local options = {
    backup = false,
    clipboard = "unnamedplus",
    cmdheight = 1,
    fileencoding = "utf-8",
    hlsearch = true,
    ignorecase = true,
    mouse = "a",
    pumheight = 8,
    showmode = true,
    smartcase = true,
    smartindent = true,
    splitbelow = true,
    splitright = true,
    swapfile = false,
    termguicolors = true,
    updatetime = 100,

	expandtab = true,
	shiftwidth = 4,
	tabstop = 4,
    cursorline = true,
    number = true,
    relativenumber = false,
    ruler = true,
    numberwidth = 2,
    signcolumn = "yes",
    wrap = false,
    scrolloff = 6,
    sidescrolloff = 6,
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
	vim.opt[k] = v
end

