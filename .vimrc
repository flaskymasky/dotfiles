" plugins needed : 
" gtags.vim
" nerdtree

execute pathogen#infect()

syntax off
filetype plugin indent on

set background=dark

set runtimepath^=~/.vim/bundle/ctrlp.vim

map <C-c> :w <CR> :!gcc % -o %< && ./%< <CR>

imap jj <Esc>`^
let g:ranger_replace_netrw = 1
let g:ranger_map_keys = 0
let g:rnvimr_ex_enable =1
nmap <space>r :Ranger<CR>



" flychecker
"
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_mode_map = { 'passive_filetypes': ['python'], }

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0


" tagbar.vim
nnoremap <silent> <F9> :TagbarToggle<CR>

nnoremap *
    \ :exec("cs find s ".expand("<cword>"))<CR>
    \ :copen<CR>


map <C-b> :tag 
map <C-l> :ts <CR>
map <C-n> :tn <CR>
map <C-k> :tp <CR>
map <C-f> :tf <CR>
map <C-l> :tl <CR>

map <C-a> :cs find e 

" update database

map <F5> :!cscope -Rb<CR>:cs reset<CR><CR>

let g:find_files_findprg = 'find $d ! -type d $*'


filetype plugin indent on

" configure expanding of tabs for various file types
" au BufRead,BufNewFile *.py set expandtab
" au BufRead,BufNewFile *.c set expandtab
" au BufRead,BufNewFile *.h set expandtab
" au BufRead,BufNewFile Makefile* set noexpandtab
"
" "
" --------------------------------------------------------------------------------
"  " configure editor with tabs and nice stuff...
"  "
"  --------------------------------------------------------------------------------
  set expandtab           " enter spaces when tab is pressed
  set textwidth=120       " break lines when line length increases
  set tabstop=4           " use 4 spaces to represent tab
  set softtabstop=4
  set shiftwidth=4        " number of spaces to use for auto indent
  set autoindent          " copy indent from current line when starting a new
"  line
"
"  " make backspaces more powerfull
  set backspace=indent,eol,start
"
  set ruler                           " show line and column number
  set showcmd             " show (partial) command in status line
  syntax on

