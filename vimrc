syntax on
set autoindent
set tabstop=8
set nu
set wildmode=longest:full,full
set wildmenu
let g:netrw_banner=0

autocmd FileType mail,human,gitcommit set textwidth=75

map <Space> <Plug>(easymotion-bd-w)

map  <Leader>j <Plug>(easymotion-j)
map  <Leader>k <Plug>(easymotion-k)

" Case insensitive search
let g:EasyMotion_smartcase = 1

map <Leader>g :GitGutter<CR>

set background=dark
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_contrast_light='hard'
colorscheme gruvbox

highlight GitGutterAdd    ctermfg=green  ctermbg=green
highlight GitGutterChange ctermfg=yellow ctermbg=yellow
highlight GitGutterDelete ctermfg=red    ctermbg=red

if !executable('git')
  let g:gitgutter_enabled = 0
endif

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

set incsearch
