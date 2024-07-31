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

map  <Leader>l <Plug>(easymotion-lineforward)
map  <Leader>j <Plug>(easymotion-j)
map  <Leader>k <Plug>(easymotion-k)
map  <Leader>h <Plug>(easymotion-linebackward)

" Case insensitive search
let g:EasyMotion_smartcase = 1

map <Leader>b :CtrlPBuffer<CR>

map <Leader>g :GitGutter<CR>

if executable('git') && isdirectory(".git")
	map gr yw :Ggrep! -w <C-r>"<CR> \| :copen<CR>
else
	map gr yw :grep! -r -w <C-r>" *<CR><CR> \| :copen<CR>
endif

map ts yw :ts <C-r>"<CR>

colorscheme murphy
highlight MatchParen ctermbg=black ctermfg=red cterm=NONE
highlight GitGutterAdd    ctermfg=green  ctermbg=green
highlight GitGutterChange ctermfg=yellow ctermbg=yellow
highlight GitGutterDelete ctermfg=red    ctermbg=red

if !executable('git')
  let g:gitgutter_enabled = 0
endif

