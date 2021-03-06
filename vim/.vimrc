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
"设置折叠
set foldmethod=indent
"设置php-cs-fixer
" If php-cs-fixer is in $PATH, you don't need to define line below
let g:php_cs_fixer_path = "~/.vim/php-cs-fixer" " define the path to the
" php-cs-fixer.phar
let g:php_cs_fixer_level = "psr2"              " which level ?
let g:php_cs_fixer_config = "default"             " configuration
let g:php_cs_fixer_php_path = "php"               " Path to PHP
" If you want to define specific fixers:
"let g:php_cs_fixer_fixers_list = "linefeed,short_tag,indentation"
let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
let g:php_cs_fixer_verbose = 0                    " Return the output of command if 1, else an inline information.



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
Bundle 'stephpy/vim-php-cs-fixer'
Bundle 'Shougo/neocomplete.vim'
Bundle 'drmingdrmer/xptemplate'
Bundle 'taglist.vim'
Bundle 'The-NERD-tree'
"Bundle 'polaris1119/VimForGo'
Bundle 'fatih/vim-go'
"Bundle 'dgryski/vim-godef'
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
"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
"" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
 let g:neocomplete#enable_at_startup = 1
" " Use smartcase.
 let g:neocomplete#enable_smart_case = 1
" " Set minimum syntax keyword length.
 let g:neocomplete#sources#syntax#min_keyword_length = 3
 let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
 " Define dictionary.
 let g:neocomplete#sources#dictionary#dictionaries = {
     \ 'default' : '',
     \ 'vimshell' : $HOME.'/.vimshell_hist',
     \ 'scheme' : $HOME.'/.gosh_completions'
         \ }
 " Define keyword.
if !exists('g:neocomplete#keyword_patterns')
         let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'



" Plugin key-mappings.

inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
      return neocomplete#close_popup() . "\<CR>"
        " For no inserting <CR> key.
        "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()

" Close popup by <Space>.
" inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() :
" \<Space>"
"
"  For cursor moving in insert mode(Not recommended)
" inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
" inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
" inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
" inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
"  Or set this.
" let g:neocomplete#enable_cursor_hold_i = 1
"  Or set this.
" let g:neocomplete#enable_insert_char_pre = 1
"  AutoComplPop like behavior.
" let g:neocomplete#enable_auto_select = 1
"
"  Shell like behavior(not recommended).
" set completeopt+=longest
" let g:neocomplete#enable_auto_select = 1
" let g:neocomplete#disable_auto_complete = 1
" noremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags


" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
      let g:neocomplete#sources#omni#input_patterns = {}
  endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
"https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
