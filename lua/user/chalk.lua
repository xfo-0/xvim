vim.cmd([[
  set foldmethod=marker
  let g:chalk_char = "."
  au BufRead,BufNewFile *.vim let b:chalk_space_before = 1
  vmap zf <Plug>Chalk
  nmap zf <Plug>Chalk

  nmap =z <Plug>ChalkUp
  nmap -z <Plug>ChalkDown
  vmap =z <Plug>ChalkUp
  vmap -z <Plug>ChalkDown
]])
