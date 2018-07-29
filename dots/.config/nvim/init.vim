" Plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'w0rp/ale'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'leshill/vim-json'
Plug 'ajh17/Spacegray.vim'
Plug 'Yggdroot/indentLine'
Plug 'editorconfig/editorconfig-vim'
Plug 'cloudhead/neovim-fuzzy'

call plug#end()


" Configure
colorscheme Spacegray

highlight clear ALEWarningSign
highlight clear ALEErrorSign

set number



" Variables
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0
let g:indentLine_char = '|'
let g:ale_sign_error = '!'
let g:ale_sign_warning = '?'
let g:ale_fix_on_save = 1
let g:ale_echo_msg_format = '%linter% says %s'

let g:ale_linters = {
\   'javascript': ['eslint', 'flow']
\}

let g:ale_fixers = {
\   'javascript': ['eslint'],
\}

let NERDTreeQuitOnOpen=1

" Bindings
map <c-e> :NERDTreeToggle<cr>
map <c-p> :FuzzyOpen<cr>
map <leader>? :lcl<cr>
map <leader>/ :lop<cr>
nmap <c-Tab> :tabmove -1<cr>
nmap <c-s-Tab> :tabmove +1<cr>
nmap <c-k> <Plug>(ale_previous_wrap)
nmap <c-j> <Plug>(ale_next_wrap)
