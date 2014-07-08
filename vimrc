""""""""""""""""""""""""""""""""
"
"  made by @lisheng
"
"""""""""""""""""""""""""""""""""

let mapleader = ";"
nmap <Leader>s :split<Enter>
nmap <Leader>v :vsplit<Enter>
noremap <S-l> :MBEbn<CR>
noremap <S-h> :MBEbp<CR>
noremap <S-t> :MBEToggle<CR>

colorscheme desert
syntax on                     
set hlsearch                 
"set mouse=a
"set backspace=2               
set backspace=indent,eol,start  
set autoindent                
set showcmd                  
set ruler                     
set showmode                 
set nu                       
set bg=dark                 
set wrap                   
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab                  
set smartindent
set encoding=utf8             
set fileencoding=utf8           
set fileencodings=uft8-bom,utf8,gbk,gb2312,big5  
set laststatus=2
set ignorecase

"highlight configuration
"au WinLeave * set nocursorline nocursorcolumn 
"au WinEnter * set cursorline cursorcolumn 
au WinEnter * set cursorline 
au WinLeave * set nocursorline 
hi CursorLine   cterm=NONE ctermbg=darkgrey ctermfg=white guibg=darkred guifg=white
hi CursorColumn cterm=NONE ctermbg=darkgrey ctermfg=white guibg=darkred guifg=white

"""""""""""""""""""""""""""""""""
"
"   vundle configuration
"
"""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()
" " alternatively, pass a path where Vundle should install plugins
" "let path = '~/some/path/here'
" "call vundle#rc(path)
"
" " let Vundle manage Vundle, required
 Plugin 'gmarik/vundle'
"
" " The following are examples of different formats supported.
" " Keep Plugin commands between here and filetype plugin indent on.
" " scripts on GitHub repos
" Plugin 'tpope/vim-fugitive'
" Plugin 'Lokaltog/vim-easymotion'
" Plugin 'tpope/vim-rails.git'
  Plugin 'bling/vim-airline'
  "Plugin 'humiaozuzu/TabBar'
  Plugin 'kien/ctrlp.vim'
  Plugin 'vim-scripts/AutoTag'
  Plugin 'fholgado/minibufexpl.vim'
  Plugin 'klen/python-mode'
  Plugin 'scrooloose/nerdtree'
  Plugin 'vim-scripts/c.vim'
  Plugin 'honza/vim-snippets'
  Plugin 'vim-scripts/taglist.vim'
  Plugin 'Shougo/neocomplcache.vim'


  "Plugin 'Lokaltog/powerline'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " scripts from http://vim-scripts.org/vim/scripts.html
"  Plugin 'L9'
" Plugin 'FuzzyFinder'
" " scripts not on GitHub
" 
" Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'

filetype plugin indent on     " required

nmap <F1> :PluginInstall<CR>     
nmap <F2> :PluginInstall!<CR>     
nmap <F3> :PluginList<CR>     
nmap <F4> :PluginClean<CR>     

"""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""
"NERDTree configuration
"
"""""""""""""""""""""""""""""""""
nmap <C-N> :NERDTreeToggle<CR>     
let NERDTreeQuitOnOpen = 1
" auto close NerdTree while close file closed
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif 
"autocmd vimenter * NERDTree                     "auto open NerdTree while opening file

"""""""""""""""""""""""""""""""""
"vim-airline configuration
"
"""""""""""""""""""""""""""""""""
let g:airline_powerline_fonts = 1
let g:airline_theme="molokai"


"""""""""""""""""""""""""""""""""
"Ctaglist configuration
"
"""""""""""""""""""""""""""""""""
nmap <C-L> :TlistToggle<CR>     
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
let Tlist_Exit_OnlyWindow = 1
let Tlist_Show_One_File = 1 
let Tlist_Auto_Open = 1
let Tlist_Use_Right_Window=0

"""""""""""""""""""""""""""""""""
"tab key-map
"
"""""""""""""""""""""""""""""""""
"map tn :tabn<CR> 
"map tp :tabp<CR> 
"map tm :tabm<CR> 
"map tt :tabnew 

"""""""""""""""""""""""""""""""""
"window key-map
"
"""""""""""""""""""""""""""""""""
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

"""""""""""""""""""""""""""""""""
"ctrlp configuration
"
"""""""""""""""""""""""""""""""""
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'


"""""""""""""""""""""""""""""""""
"xdebug configuration
"
"""""""""""""""""""""""""""""""""

let g:debuggerMaxDepth = 5

"""""""""""""""""""""""""""""""""

"解决consle输出乱码
language messages zh_CN.utf-8
"解决菜单乱码
"source $VIMRUNTIME/delmenu.vim
"source $VIMRUNTIME/menu.vim
"set guifont=YaHei\ Consolas\ Hybrid\ 11 


"""""""""""""""""""""""""""""""""
" neocomplcacheComplete
"
"""""""""""""""""""""""""""""""""
filetype plugin on

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

autocmd FileType python runtime! autoload/pythoncomplete.vim
" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplcache_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplcache_omni_patterns.perl = '\h\w*->\h\w*\|\h\w*::'


"inoremap <C-P> <ESC>:call PhpDocSingle()<CR>
"nnoremap <C-P> :call PhpDocSingle()<CR>
"vnoremap <C-P> :call PhpDocRange()<CR> 

inoremap <expr><Space> pumvisible() ? neocomplcache#close_popup() : "\<Space>"
inoremap <expr><Enter> pumvisible() ? "\<C-n>" : "\<Enter>"
inoremap <expr><S-BS>     neocomplcache#undo_completion()

"Neocomplcache
if &term=="xterm"
    set t_Co=8
    set t_Sb=^[[4%dm
    set t_Sf=^[[3%dm
endif

"""""""""""""""""""""""""""""""""

autocmd VimEnter * wincmd l
