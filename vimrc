syntax on
set autoindent
set tabstop=8
set rnu
set nu
set wildmode=longest:full,full
set wildmenu
let g:netrw_banner=0

autocmd FileType mail,human,gitcommit set textwidth=75

map <Space> <Plug>(easymotion-bd-w)

" Case insensitive search
let g:EasyMotion_smartcase = 1

map <Leader>g :GitGutter<CR>

silent! colorscheme wildcharm

if !executable('git')
  let g:gitgutter_enabled = 0
endif

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

set incsearch
