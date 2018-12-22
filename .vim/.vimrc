execute pathogen#infect()

set tags=tags;/

" add header guards to new files
function! s:insert_gates()
  let gatename = substitute(toupper(expand("%:t")), "\\.", "_", "g")
  execute "normal! i#ifndef " . gatename
  execute "normal! o#define " . gatename . " "
  execute "normal! Go#endif /* " . gatename . " */"
  normal! kk
endfunction
autocmd BufNewFile *.{h,hpp} call <SID>insert_gates()

" remember last position in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

set background=dark
"colorscheme solarized
let g:solarized_italic=0
set gfn=Consolas:h11

set hidden

set number
set relativenumber
set linebreak
set showbreak=+++
"set textwidth=100
set showmatch
set visualbell
 
set hlsearch
set smartcase
set ignorecase
set incsearch
 
set autoindent
set expandtab
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4
set cinoptions=c0
 
set ruler
 
set undolevels=1000
set backspace=indent,eol,start

"set background=dark
syntax on " Syntax highlighting
set backupdir=~/.tmp

let mapleader=" "

" Quickly view and switch buffers
nnoremap <leader>l :ls<CR>:b<space>

" Vim-Style Tab navigation
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

