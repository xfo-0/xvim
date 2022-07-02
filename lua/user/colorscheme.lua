vim.transparent_window = true
vim.cmd("au ColorScheme * hi WinSeparator guibg=none")
vim.cmd("au ColorScheme * hi Normal ctermbg=none guibg=none")
vim.cmd("au ColorScheme * hi SignColumn ctermbg=none guibg=none")
vim.cmd("au ColorScheme * hi NormalNC ctermbg=none guibg=none")
vim.cmd("au ColorScheme * hi MsgArea ctermbg=none guibg=none")
vim.cmd("au ColorScheme * hi TelescopeBorder ctermbg=none guibg=none")
vim.cmd("au ColorScheme * hi vimTreeNormal ctermbg=none guibg=none")
vim.cmd("let g:despacio_Pitch=1")

vim.cmd [[
try
  colorscheme despacio
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
