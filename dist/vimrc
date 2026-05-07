syntax on
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set ruler
set backspace=indent,eol,start
set hlsearch
set nonumber

filetype plugin indent on

autocmd BufNewFile,BufRead Gemfile set filetype=ruby
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2
autocmd FileType eruby setlocal tabstop=2 shiftwidth=2
autocmd FileType javascript setlocal tabstop=2 shiftwidth=2
autocmd FileType vhdl setlocal tabstop=2 shiftwidth=2

call plug#begin()
Plug 'mattn/emmet-vim'
Plug 'lervag/vimtex'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

let g:vimtex_include_search_enabled = 0

let g:user_emmet_expandabbr_key = '<c-e>'

nmap <C-P> :FZF<CR>

" Requires silversearcher-ag, to gitignore.
let $FZF_DEFAULT_COMMAND = 'ag -g ""'


map <F1> <Nop>
imap <F1> <Nop>

set exrc
set secure
set mouse=
colorscheme default
