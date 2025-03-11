let g:rustfmt_autosave = 1

call plug#begin()

Plug 'preservim/tagbar'
Plug 'rust-lang/rust.vim'
Plug 'scrooloose/nerdtree'
Plug 'sindrets/diffview.nvim'

call plug#end()

nmap <F8> :TagbarToggle<CR>

" Reducing delay for Ctrl + O
set ttimeoutlen=10

syntax on
set hlsearch

set cursorline
set number
set ruler

set autoindent
set noexpandtab
set shiftwidth=4
set smartindent
set tabstop=4

set noerrorbells

autocmd BufRead *.c set colorcolumn=81
autocmd BufRead *.[ch]pp set colorcolumn=121
autocmd BufRead *.rs set colorcolumn=100

autocmd BufRead *.rs compiler! cargo

autocmd BufRead *.yml SetYaml
autocmd BufRead *.yaml SetYaml

function SetYaml()
	set expandtab
	set shiftwidth=2
	set tabstop=2
endfunction

" NERDTree
let NERDTreeShowHidden=1
autocmd VimEnter * NERDTree | wincmd p
nnoremap <C-y> :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
