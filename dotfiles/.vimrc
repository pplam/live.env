set nocompatible               " be iMproved
set encoding=utf8
"filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'einars/js-beautify'
Plugin 'kchmck/vim-coffee-script'
Plugin 'moll/vim-node'
Plugin 'mxw/vim-jsx'
Plugin 'mtscout6/vim-cjsx'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rvm'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-rails.git'
Plugin 'pangloss/vim-javascript'
Plugin 'vim-scripts/The-NERD-Commenter'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'scrooloose/nerdtree'
Plugin 'walm/jshint.vim'
Plugin 'L9'
Plugin 'slim-template/vim-slim.git'
Plugin 'kien/ctrlp.vim'
Plugin 'JulesWang/css.vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'digitaltoad/vim-jade.git'

" 1 tab to 2 space for ruby
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set tw=68
" number line show 
set nu
set foldmethod=indent " 设置语法折叠
set nofoldenable

" input source improve for gui vim
if has("gui_running")
  set noimdisable
  set imi=2
  set ims=2
endif

set noswapfile
"in order to switch between buffers with unsaved change
set hidden

" hightlight col and line
" set cursorline
"set cursorcolumn

if has("gui_running")
  colorscheme desert
  set bs=2
  set ruler
  set gfn=Monaco:h16
  set shell=/bin/bash
endif

let mapleader= ","
let g:user_emmet_install_global = 0
autocmd FileType html,css,eruby EmmetInstall

set completefunc=syntaxcomplete#Complete
" indent guides
let g:indent_guides_guide_size = 1
" indent guides shortcut
map <silent><F7>  <leader>ig
map <silent><F8> :NERDTree<CR>

autocmd BufNewFile,BufRead *.coffee set filetype=coffee
" hack filetype for slim
autocmd BufNewFile,BufRead *.slim set filetype=slim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
map <c-o> :CtrlPBuffer<CR>

call vundle#end()
" support css word with -
autocmd FileType css,scss setlocal iskeyword+=-

" vim 7.4 backspace fix
set backspace=indent,eol,start
set t_Co=256
" colorscheme, read here: http://vim.wikia.com/wiki/Change_the_color_scheme
" colorscheme molokai
Bundle 'wakatime/vim-wakatime'
autocmd User Node
  \ if &filetype == "javascript" |
  \   nmap <buffer> <C-w>f <Plug>NodeVSplitGotoFile |
  \   nmap <buffer> <C-w><C-f> <Plug>NodeVSplitGotoFile |
  \ endif

autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd FileType perl setlocal ts=2 sts=2 sw=2

".vimrc
map <c-f> :call JsBeautify()<cr>
" or
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

filetype plugin indent on     " required! 
syntax on
map <C-n> :NERDTreeToggle<CR>

fun! TrimWhitespace()
  let l:save_cursor = getpos('.')
  %s/\s\+$//e
  call setpos('.', l:save_cursor)
endfun
