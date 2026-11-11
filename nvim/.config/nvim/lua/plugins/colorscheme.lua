-- Mostly-monochrome theme; transparent so Alacritty's opacity/wallpaper shows through
require("lackluster").setup({
    tweak_background = {
        normal = "none",
        telescope = "none",
    },
    tweak_syntax = {
        comment = "#7a7a7a", -- lackluster gray6; readable on a transparent bg
    },
})
vim.cmd.colorscheme("lackluster")
