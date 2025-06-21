syntax on
set autoindent
set tabstop=8
set nu

autocmd FileType mail,human,gitcommit set textwidth=75

let mapleader=" "

map  f <Plug>(easymotion-bd-f)

map  <Leader>j <Plug>(easymotion-j)
map  <Leader>k <Plug>(easymotion-k)

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

set background=dark
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox

highlight GitGutterAdd    ctermfg=green  ctermbg=green
highlight GitGutterChange ctermfg=yellow ctermbg=yellow
highlight GitGutterDelete ctermfg=red    ctermbg=red

if !executable('git')
  let g:gitgutter_enabled = 0
endif

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

set hlsearch
