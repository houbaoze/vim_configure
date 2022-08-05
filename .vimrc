call plug#begin('~/.vim/plugged')

 Plug 'scrooloose/nerdtree'
 Plug 'mhinz/vim-startify' 
 " Plug 'tpope/vim-fugitive' 
 Plug 'lfv89/vim-interestingwords' " Highlight with <Leader>k
 Plug 'vim-scripts/DoxygenToolkit.vim'
 Plug 'ycm-core/YouCompleteMe'
 Plug 'octol/vim-cpp-enhanced-highlight'
 Plug 'Yggdroot/indentLine'
 Plug 'godlygeek/tabular'
 
 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'
 
 Plug 'preservim/vim-markdown'
 Plug 'iamcco/mathjax-support-for-mkdp'
 Plug 'iamcco/markdown-preview.nvim'
 
 Plug 'preservim/nerdcommenter'
" Plug 'Yggdroot/LeaderF'
 Plug 'airblade/vim-gitgutter'
 Plug 'vim-scripts/taglist.vim'
 
 Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
 Plug 'junegunn/fzf.vim'
 Plug 'altercation/vim-colors-solarized'
 " Plug 'mileszs/ack.vim'
call plug#end()
set number

" On pressing tab, insert 2 spaces
set expandtab

" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2

" when indenting with '>', use 2 spaces width
set shiftwidth=2

set syntax=on
let mapleader = '\'
let g:clang_complete_copen=1
let g:clang_close_preview=0
let g:clang_user_options='-std=c++17'
let g:neocomplcache_enable_at_startup = 1 
let g:DoxygenToolkit_authorName="houbaoze@blackvision.net"
let g:ycm_comfirm_extra_conf=0
let g:vim_markdown_toc_autofit = 1
let g:AutoPairsCenterLine = 0
let g:AutoPairsMapCR = 1

" vim-airline config
set laststatus=2  "永远显示状态栏
let g:airline_powerline_fonts = 1  " 支持 powerline 字体
let g:airline#extensions#tabline#enabled = 1 " 显示窗口tab和buffer
let g:airline_theme='ouo'   

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.branch = ''


map <F2> : YcmCompleter GoTo<CR>
map <F3> : YcmCompleter GoToReferences<CR>
map f : YcmCompleter FixIt<CR>
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'

set completeopt=longest
" Use homebrew's clangd
"let g:ycm_clangd_binary_path = trim(system('brew --prefix llvm')).'/bin/clangd'"
set nolist
syntax enable
set background=dark
colorscheme elflord
