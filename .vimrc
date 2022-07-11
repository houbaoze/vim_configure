call plug#begin('~/.vim/plugged')

 Plug 'scrooloose/nerdtree'
 Plug 'mhinz/vim-startify' 
 Plug 'tpope/vim-fugitive' 
 Plug 'lfv89/vim-interestingwords'
 Plug 'vim-scripts/DoxygenToolkit.vim'
 Plug 'ycm-core/YouCompleteMe'
 Plug 'octol/vim-cpp-enhanced-highlight'
 Plug 'Yggdroot/indentLine'
 Plug 'godlygeek/tabular'
 Plug 'preservim/vim-markdown'
 Plug 'iamcco/mathjax-support-for-mkdp'
 Plug 'iamcco/markdown-preview.nvim'
 Plug 'preservim/nerdcommenter'
 Plug 'Yggdroot/LeaderF'
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
let g:clang_complete_copen=1
let g:clang_close_preview=1
let g:clang_user_options='-std=c++17'
let g:neocomplcache_enable_at_startup = 1 
let g:DoxygenToolkit_authorName="houbaoze@blackvision.net"
let g:ycm_comfirm_extra_conf=0
let g:vim_markdown_toc_autofit = 1
let g:AutoPairsCenterLine = 0
let g:AutoPairsMapCR = 1
map <F2> : YcmCompleter GoTo<CR>
map <F3> : YcmCompleter GoToReferences<CR>
map f : YcmCompleter FixIt<CR>
set completeopt=longest
" Use homebrew's clangd
"let g:ycm_clangd_binary_path = trim(system('brew --prefix llvm')).'/bin/clangd'"
set nolist

