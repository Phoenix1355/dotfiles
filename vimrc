" --- Plugins ---
" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install -all' }
Plug 'junegunn/fzf.vim'

" Project file tree
Plug 'scrooloose/nerdtree'

" Polygot syntax highlighting
Plug 'sheerun/vim-polyglot'

" Vim prettier support
Plug 'prettier/vim-prettier'

" ALE for eslint
Plug 'dense-analysis/ale'

" Coc.nvim intellisense
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" OneDarkPro Theme
Plug 'joshdick/onedark.vim'

" Initialize plugin system
call plug#end()

" --- Settings ---

" Color theme
syntax enable
set number
colorscheme onedark

" Js config
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1
let g:vim_jsx_pretty_colorful_config = 1

" let g:ale_fixers['javascript'] = ['eslint']

" Fix files automatically on save
let g:ale_fix_on_save = 1
