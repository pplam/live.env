set nocompatible              " be iMproved, required
filetype off                  " required

" install vundle:
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" colorscheme desert

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-rails.git'
Plugin 'vim-ruby/vim-ruby'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'digitaltoad/vim-jade'
Plugin 'tomtom/tcomment_vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'moll/vim-node'
Plugin 'fatih/vim-go'
Plugin 'scrooloose/syntastic'
Plugin 'Shougo/neocomplete.vim'
Plugin 'cespare/vim-toml'
Plugin 'mxw/vim-jsx'
Plugin 'mtscout6/vim-cjsx'
Plugin 'Raimondi/delimitMate'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'metrue/trims'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'mtscout6/syntastic-local-eslint.vim'
Plugin 'evanmiller/nginx-vim-syntax'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'vim-scripts/svg.vim'
Plugin 'crusoexia/vim-monokai'
Plugin 'wakatime/vim-wakatime'
Plugin 'JulesWang/css.vim'
" compile YouCompleteMe:
" cd ~/.vim/bundle/YouCompleteMe; ./install.py

call vundle#end()

syntax on
filetype on
filetype plugin indent on     " required

" moving cursor between windows
nmap <C-j> ^Wj
nmap <C-k> ^Wk
nmap <C-l> ^Wl
nmap <C-h> ^Wh

colorscheme monokai
" uncomment this if you want to use mouse
set ttymouse=xterm
set mouse=nv

set expandtab
set tabstop=2
set shiftwidth=2
set number
set autoindent
set smarttab
set backspace=indent,eol,start
" set mouse=a

set rtp+=$HOME/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim/
" Always show statusline
set laststatus=2
" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256
set pastetoggle=<F10>

au Filetype go nnoremap <leader>v :vsp <CR>:exe "GoDef" <CR>

autocmd CursorMovedI * if pumvisible() == 0|silent! pclose|endif
autocmd InsertLeave * if pumvisible() == 0|silent! pclose|endif

let g:go_fmt_command = "goimports"
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:NERDTreeMouseMode=3

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
" let g:jsx_ext_required = 0
let g:syntastic_javascript_checkers = ['eslint']

nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
autocmd BufWritePre * :%s/\s\+$//e

" NerdTree
map <C-n> :NERDTreeToggle<CR>
