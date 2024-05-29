colorscheme dim
set updatetime=1000
syntax on
set autoindent
set tabstop=8
set nu

map <F5> :NERDTreeToggle<CR>

autocmd FileType mail,human,gitcommit set textwidth=75

let mapleader=" "

" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)

" Case insensitive search
let g:EasyMotion_smartcase = 1

