call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sleuth'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'dense-analysis/ale'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
call plug#end()

" space as leader key
let mapleader=' '

" mouse support
set mouse=a

" colors
set termguicolors
set background=dark
colorscheme catppuccin_mocha

" shared clipboards 
set clipboard^=unnamed,unnamedplus

" don't wrap long lines
set nowrap

" Save with ctrl s (also in insert mode and then leave insert mode)
map <C-s> :update<cr>
imap <C-s> <ESC>:update<cr>

" omnicomplate with ctrl+space (C-n is keyword completion)
inoremap <C-Space> <C-x><C-o>

" always show lines above/below
set scrolloff=4

" autosave
set autowrite

" ignore case in search
set ignorecase

" change window also with tab
nnoremap <tab>   <c-w>w
nnoremap <S-tab> <c-w>W

" Page up/down
noremap <C-j> <C-d>
noremap <C-down> <C-d>
noremap <C-k> <C-u>
noremap <C-up> <C-u>

" Don't jump with shift is still pressed
noremap <S-up> <up>
noremap <S-down> <down>

" open new splits right (vertical) or below (horizontal)
set splitbelow
set splitright
"map <F4> :vsplit<cr>
"map " :vsplit<cr>

" clear search highlight on enter
nnoremap <CR> :noh<CR>

" highlight selection on yank
au TextYankPost * silent! lua vim.highlight.on_yank()

" cursorline only in normal mode
set cul
autocmd InsertEnter * set nocul
autocmd InsertLeave * set cul

" Change cursor shape based on mode
let &t_SI = "\e[6 q"   " Insert mode: line cursor
let &t_EI = "\e[2 q"   " Normal mode: block cursor

" timeout for leader key and command
set timeoutlen=300

" make split less ugly
set fillchars+=vert:│

" FZF
nnoremap <leader><space> :Files<CR>
nnoremap <Bslash> :Buffers<CR>

" NERDTree
map - :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen = 1
let g:NERDTreeWinPos = "right"

" Linters
set omnifunc=ale#completion#OmniFunc
let g:ale_fix_on_save = 0
let g:ale_linters = {
\}
let g:ale_fixers = {
\   'javascript': ['prettier', 'eslint'],
\}
nnoremap <silent> gd <Plug>(ale_go_to_definition)
nnoremap <silent> gr <Plug>(ale_find_references)
nnoremap <silent> K <Plug>(ale_hover)
nnoremap <silent> <leader>cr :ALERename<CR>
nnoremap <silent> <leader>cf :ALEFix<CR>
