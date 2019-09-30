" --- Plugins ---
" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install -all' }

" Project file tree
Plug 'scrooloose/nerdtree'

" Polygot syntax highlighting
Plug 'sheerun/vom-polygot'

" Vim prettier support
Plug 'prettier/vim-prettier'

" ALE for eslint
Plug 'dense-analysis/ale'

" Coc.nvim intellisense
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" Initialize plugin system
call plug#end()

" --- Settings ---

" let g:ale_fixers['javascript'] = ['eslint']

" Fix files automatically on save
let g:ale_fix_on_save = 1
