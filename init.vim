language en_US

syntax on
filetype plugin indent on

call plug#begin('~/.config/nvim/plugged')

" Plugins {
    " airline is a better status line and a tab-bar for nvim.
    Plug 'bling/vim-airline'

    " haskell-vim plugin
    Plug 'https://github.com/neovimhaskell/haskell-vim.git'

    " NERDTree
    Plug 'https://github.com/scrooloose/nerdtree.git'

    " CtrlP
    Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'

    " Neomake
    Plug 'https://github.com/neomake/neomake.git'

    " vimproc.vim
    Plug 'Shougo/vimproc.vim', {'do' : 'make'}

    " Tabular
    Plug 'https://github.com/godlygeek/tabular'

    " Surround
    Plug 'https://github.com/tpope/vim-surround'
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
    " Haskell-vim {
        let g:haskell_classic_highlighting = 1
        let g:haskell_indent_if = 3
        let g:haskell_indent_case = 2
        let g:haskell_indent_let = 4
        let g:haskell_indent_where = 6
        let g:haskell_indent_before_where = 2
        let g:haskell_indent_after_bare_where = 2
        let g:haskell_indent_do = 3
        let g:haskell_indent_in = 1
        let g:haskell_indent_guard = 2
        let g:haskell_indent_case_alternative = 1
        let g:cabal_indent_section = 2
    " }
    " NERDTree {
       "Open NERDTree when nvim starts
       " autocmd StdinReadPre * let s:std_in=1
       " autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

       "Toggle NERDTree with Ctrl-N
       " map <Leader>n :NERDTreeToggle<CR>

       "Show hidden files in NERDTree
       " let NERDTreeShowHidden=1
    " }
    " CtrlP {
    " }
    " Neomake {
       let g:neomake_haskell_enabled_makers = []
    " }
    " Tabular {
       nnoremap <leader>= :Tabularize /=<CR>
       nnoremap <leader>- :Tabularize /-><CR>
       nnoremap <leader>, :Tabularize /,<CR>
       nnoremap <leader># :Tabularize /#-}<CR>
