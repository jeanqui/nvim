syntax enable

call plug#begin('~/.config/nvim/plugged')

" Plugins {
    " airline is a better status line and a tab-bar for nvim.
    Plug 'bling/vim-airline'

    " LaTeX plugin
    Plug 'lervag/vimtex'

    " Themes
    Plug 'gertjanreynaert/cobalt2-vim-theme'
    Plug 'fmoralesc/molokayo'
    Plug 'herrbischoff/cobalt2.vim'

    " Auto-close
    Plug 'jiangmiao/auto-pairs'
" }

call plug#end()

let mapleader="\<SPACE>"

set showmatch           " Show matching brackets.
set number              " Show the line numbers on the left side.
set tabstop=2           " Render TABs using this many spaces.
set shiftwidth=2        " Indentation amount for < and > commands.
set colorcolumn=121
set showmode
set smartcase
set noautoindent
set softtabstop=2
set laststatus=0
set syntax=context

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

" More natural splits

if !&scrolloff
    set scrolloff=15       " Show next 3 lines while scrolling.
endif
if !&sidescrolloff
    set sidescrolloff=5   " Show next 5 columns while side-scrolling.
endif

" Plugin Settings {
    " Airline {
    " }
    " vim-tex {
		let g:vimtex_view_general_viewer = 'SumatraPDF.exe'
		let g:vimtex_view_general_options_latexmk = '-reuse-instance'
		let g:vimtex_view_general_options
                \ = '-reuse-instance -forward-search @tex @line @pdf'
                \ . ' -inverse-search "gvim --servername ' . v:servername
                \ . ' --remote-send \"^<C-\^>^<C-n^>'
                \ . ':drop \%f^<CR^>:\%l^<CR^>:normal\! zzzv^<CR^>'
                \ . ':execute ''drop '' . fnameescape(''\%f'')^<CR^>'
                \ . ':\%l^<CR^>:normal\! zzzv^<CR^>'
                \ . ':call remote_foreground('''.v:servername.''')^<CR^>^<CR^>\""'
		let g:tex_flavor = 'latex'
    let g:vimtex_indent_enabled = 0
    " }
    " autopairs {
    let g:AutoPairs = {'(':')', '[':']', '{':'}','"':'"', "`":"`", '```':'`````', '"""':'"""""', "'''":"'''''", '$':'$'}
    " }
" }

