set rtp+=~/.vim/bundle/vundle
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-rails.git'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'altercation/vim-colors-solarized'
filetype plugin indent on
syntax on
set autoread
set nocompatible
set shiftwidth=4
set tabstop=4
set smarttab
set laststatus=2
set backspace=2
set number
set ruler
set background=dark
set hlsearch
set incsearch
set magic
set ai
set si
set wrap
colorscheme solarized
let g:ycm_key_list_select_completion = ['<TAB>']
let g:ycm_key_list_previous_completion = ['<S-TAB>']
let g:ycm_key_invoke_completion = '<M-Space>'
autocmd BufReadPre SConstruct set filetype=python
if has('conceal')
	if has('autocmd')
		autocmd Syntax * syn keyword Operator lambda conceal cchar=λ
		autocmd Syntax ruby syn match rubyKeyword "->" conceal cchar=λ
		autocmd Syntax haskell syn match hsKeyword "\\" conceal cchar=λ
		autocmd Syntax haskell syn match hsKeyword "->" conceal cchar=→
	endif
	hi! link Conceal Operator
	set conceallevel=2
endif
" Statusline.
hi Statusline ctermbg=white ctermfg=black

augroup VimStartup
	au!
	au VimEnter * sil! iunmap <C-K>
augroup end
