language en_US

syntax on
filetype plugin indent on

call plug#begin('~/.config/nvim/plugged')

" Plugins {
    " airline is a better status line and a tab-bar for nvim.
    Plug 'bling/vim-airline'

    " Vim-Go
    Plug 'fatih/vim-go'
" }

call plug#end()

let mapleader="\<SPACE>"

set showmatch           " Show matching brackets.
set number              " Show the line numbers on the left side.
set expandtab           " Insert spaces when TAB is pressed.
set tabstop=2           " Render TABs using this many spaces.
set shiftwidth=2        " Indentation amount for < and > commands.
set colorcolumn=80
set showmode
set smartcase
set smarttab
set smartindent
set autoindent
set softtabstop=2
set laststatus=0

"au FileType go set noexpandtab
"au FileType go set shiftwidth=4
"au FileType go set softtabstop=4
"au FileType go set tabstop=4

hi Keyword ctermfg=darkcyan
hi Constant ctermfg=5*
hi Comment ctermfg=2*
hi Normal ctermbg=none
hi LineNr ctermfg=darkgrey


" " Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" Split Navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"background tab
map :bt :tab split<CR>gT :q<CR>

" Tell Vim which characters to show for expanded TABs,
" trailing whitespace, and end-of-lines. VERY useful!
if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif
set list                " Show problematic characters.

" Also highlight all tabs and trailing whitespace characters.
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$\|\t/

" More natural splits

if !&scrolloff
    set scrolloff=3       " Show next 3 lines while scrolling.
endif
if !&sidescrolloff
    set sidescrolloff=5   " Show next 5 columns while side-scrolling.
endif

" Plugin Settings {
    " Airline {
    " }
    " Vim-Go {
    let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_auto_sameids = 1
let g:go_fmt_command = "goimports"
    " }
" }
