filetype plugin indent on
syntax on

set noswapfile
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent
set backspace=indent,eol,start
set ignorecase
set encoding=utf-8
set laststatus=2

set foldmethod=manual
set foldcolumn=1

" remember folds after closing files
autocmd BufWinLeave *.* mkview!
autocmd BufWinEnter *.* silent loadview

" automatically wrap text at 80 lines for .cpp and .tex files
autocmd BufWinEnter *.cpp set textwidth=80 fo=tcq
autocmd BufWinEnter *.tex set textwidth=80 fo=tcq

" relative line numbers
set number relativenumber

" highlights the row cursor
set cursorline 

" configure highlight colors
hi CursorLine cterm=bold ctermbg=0 ctermfg=NONE

" highlights the column cursor
set cursorcolumn 
set linebreak

" allows mouse usage in vim
set mouse=a

" allows copy and paste
set pastetoggle=<F2>

" keystroke sequence delay for maps
set ttimeoutlen=100 

" swap 0 and ^ (0 = move to column 0, ^ = move to first char of line)
nnoremap 0 ^
nnoremap ^ 0

" tab switching maps
nnoremap <C-t>k :tabr<cr>
nnoremap <C-t>j :tabl<cr>
nnoremap <C-t>h :tabp<cr>
nnoremap <C-t>l :tabn<cr>

" cylce through buffers
nnoremap <C-l> :bnext<CR>
nnoremap <C-h> :bprevious<CR>

" list buffers and jump to buffer number
nnoremap <C-b> :ls<CR>:b<Space>

" :r removes file extensions '.cpp'
" '!' executes externally (outside of vim)
" '%' token for current file name
" hotkey for save, clear terminal, compile and run
map <F5> <Esc>:w<CR>:!clear<CR>:!g++ -O2 -DLOCAL -Wall -Wno-sign-compare -Wno-unused-result -std=c++11 -static % -o %:r<CR>:!./%:r<CR>


call plug#end()
