let g:rustfmt_autosave = 1

call plug#begin()

Plug 'rust-lang/rust.vim'

Plug 'preservim/tagbar'

" Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

nmap <F8> :TagbarToggle<CR>

" Reducing delay for Ctrl + O
set ttimeoutlen=10

syntax on

set autoindent
set cursorline
set hlsearch
set noexpandtab
set number
set ruler
set shiftwidth=4
set smartindent
set tabstop=4

autocmd BufRead *.c set colorcolumn=81
autocmd BufRead *.[ch]pp set colorcolumn=121
autocmd BufRead *.rs set colorcolumn=100

autocmd BufRead *.rs compiler! cargo

autocmd BufRead *.yml SetYaml
autocmd BufRead *.yaml SetYaml

function SetYaml()
	set expandtab
	set tabstop=2
	set shiftwidth=2
endfunction
