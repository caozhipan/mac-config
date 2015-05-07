set number
set encoding=utf-8
syntax on
colo torte
"set fileencoding
set hls "高亮搜索
"set tabstop=4
"set sw=4
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" For vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
" vim-scripts repos
"plugin name show in http://vim-scripts.org/vim/scripts.html
Bundle 'bash-support.vim'
Bundle 'perl-support.vim'
"Bundle 'ctags.vim'
Bundle 'Shougo/neocomplete.vim'
Bundle 'taglist.vim'
Bundle 'The-NERD-tree'
"Bundle 'polaris1119/VimForGo'
Bundle 'fatih/vim-go'
"Bundle 'dgryski/vim-godef'
Bundle 'drmingdrmer/xptemplate'
Bundle 'Blackrush/vim-gocode'
Bundle 'majutsushi/tagbar'
"Bundle 'Valloric/YouCompleteMe'
nmap <F8> :TagbarToggle<CR>
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
	\ }
filetype plugin indent on "
