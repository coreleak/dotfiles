local options = {
    fileencoding = "utf-8",
    guifont = "mono:h16",
    hlsearch = true,
    ignorecase = true,
    smartcase = true,
    showmatch = true,

    tabstop = 4,
    softtabstop = 4,
    shiftwidth = 4,
    expandtab = true,
    number = true,
    cursorline = true,
    ruler = false,
    laststatus = 2,

    syntax = "ON",
}

for k, v in pairs(options) do
    vim.opt[k] = v
end
