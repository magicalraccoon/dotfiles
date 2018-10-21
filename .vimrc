" Filetype detection "
filetype indent on

" Highlight matching brackets "
set showmatch

" Visual autocomplete "
set wildmenu

" allows cursor change in tmux mode "
" if exists('$TMUX') "
"  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\" "
"  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\" "
" else "
"  let &t_SI = "\<Esc>]50;CursorShape=1\x7" "
"  let &t_EI = "\<Esc>]50;CursorShape=0\x7" "
" endif "

let g:airline_theme='materialmonokai'

" Fun stuff "
" let g:materialmonokai_italic=1 "
" let g:materialmonokai_subtle_spell=1 "
" let g:materialmonokai_subtle_airline=1 "
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

" Always show powerline "
set laststatus=2

" Turn syntax highlighting on " 
syntax on

" Set to 256Color "
"set term=xterm-256color

" Ruler and numbers "
set ruler
set number

" Aliases "
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

" Enable material-monokai (dark) "
" set background=dark
" set termguicolors
colorscheme material-monokai

" Spaces and Tabs "
set tabstop=4
set softtabstop=4
set expandtab

" Filetype detection "
filetype indent on

" Highlight matching brackets "
set showmatch

" Visual autocomplete "
set wildmenu

" allows cursor change in tmux mode "
" if exists('$TMUX') "
"  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\" "
"  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\" "
" else "
"  let &t_SI = "\<Esc>]50;CursorShape=1\x7" "
"  let &t_EI = "\<Esc>]50;CursorShape=0\x7" "
" endif "

let g:airline_theme='materialmonokai'

" Fun stuff "
" let g:materialmonokai_italic=1 "
" let g:materialmonokai_subtle_spell=1 "
" let g:materialmonokai_subtle_airline=1 "
