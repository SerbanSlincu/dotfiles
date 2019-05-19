set autoindent
set expandtab
set shiftround
set tabstop=4

set hlsearch
set smartcase
set incsearch

set scrolloff=2
set laststatus=2
set ruler
set wildmenu
colorscheme default
set number relativenumber
set title
set background=dark

set autoread
set history=1000

set cursorline
hi CursorLine term=bold cterm=NONE ctermbg=DarkGray ctermfg=NONE guibg=Grey40

"This is useful for .cpp files"
autocmd filetype cpp nnoremap <F4> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>

"This is useful for .tex files"
autocmd filetype tex nnoremap <F5> <bar> :!pdflatex %:p && firefox %:p:r.pdf<CR>

"Better movement"
nnoremap ; l
nnoremap l k
nnoremap k j
nnoremap j h
vnoremap ; l
vnoremap l k
vnoremap k j
vnoremap j h
inoremap jj <Esc>

"Better movement between files"
map fj <C-W>h
map fk <C-W>j
map fl <C-W>k
map f; <C-W>l
map faj <C-W>H
map fak <C-W>J
map fal <C-W>K
map fa; <C-W>L
map ff :Vexplore<CR>
map fq :q<CR>
map fw :w<CR>

"Useful in general"
command W w

"File manager"
let g:netrw_liststyle=3
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_winsize=33
