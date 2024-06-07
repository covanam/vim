syntax on
set autoindent
set tabstop=8
set nu

autocmd FileType mail,human,gitcommit set textwidth=75

let mapleader=" "

" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)

" Move to word
map  s         <Plug>(easymotion-bd-w)
map  <Leader>e <Plug>(easymotion-bd-e)

" Case insensitive search
let g:EasyMotion_smartcase = 1

map <Leader>b :CtrlPBuffer<CR>

map <Leader>g :GitGutter<CR>

map gr yw :Ggrep! -w <C-r>" \| <CR> \| :copen<CR>
map ts yw :ts <C-r>"<CR>

colorscheme murphy
highlight MatchParen ctermbg=black ctermfg=red cterm=NONE
highlight GitGutterAdd    ctermfg=green  ctermbg=green
highlight GitGutterChange ctermfg=yellow ctermbg=yellow
highlight GitGutterDelete ctermfg=red    ctermbg=red

if !executable('git')
  let g:gitgutter_enabled = 0
endif

