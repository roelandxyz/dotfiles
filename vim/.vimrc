call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
"Plug 'dense-analysis/ale'
"Plug 'yegappan/lsp'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()


if has("gui_running")
    set guifont=JetBrainsMonoNFM-Regular:h13

    " set guifont=Fira_Code:h12:cANSI:qDRAFT
    " set guioptions -=T
    " set guioptions-=r  "scrollbar
    " set lines=35 columns=100
    " au BufReadPost *.cln set syntax=baan
    " autocmd FileType baan setlocal commentstring=\|*\ %s
endif

"space as leader key
let mapleader=' '

colorscheme quiet

"shared clipboards
set clipboard^=unnamed,unnamedplus

" don't wrap long lines
set nowrap

" Save with ctrl s (also in insert mode and then leave insert mode)
map <C-s> :update<cr>
imap <C-s> <ESC>:update<cr>

" home/end like in readline
map <C-a> <ESC>^
imap <C-a> <ESC>I
map <C-e> <ESC>$
imap <C-e> <ESC>A


set scrolloff=5

"autosave
set autowrite

set tabstop=4
set shiftwidth=4
set expandtab
set ignorecase

" change window also with tab
nnoremap <tab>   <c-w>w
nnoremap <S-tab> <c-w>W

noremap <silent> <C-S-Left> :vertical resize -1<CR>
noremap <silent> <C-S-Right> :vertical resize +1<CR>

" open new splits right (vertical) or below (horizontal)
set splitbelow
set splitright
map <F4> :vsplit<cr>
map " :vsplit<cr>

"clear search highlight on enter
nnoremap <CR> :noh<CR>

"highlight selection on yank
au TextYankPost * silent! lua vim.highlight.on_yank()

"cursorline only in normal mode
set cul
autocmd InsertEnter * set nocul
autocmd InsertLeave * set cul

"timeout for leader key and command
set timeoutlen=300

"FZF
nnoremap <leader><space> :FZF<CR>

"NERDTree
map <leader>n :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen = 1

" Ale
" let g:ale_fix_on_save = 1
" let g:ale_fixers = {
" \   '*': ['remove_trailing_lines', 'trim_whitespace'],
" \   'javascript': ['eslint'],
" \   'go': ['goimports']
" \}

" abbreviations
iabbrev erb <%%><Left><Left>

" LSP
" let lspOpts = #{
"     \ autoHighlightDiags: v:true,
"     \   workspaceConfig: #{
"     \     gopls: #{
"     \       gofumpt: v:true,
"     \     }
"     \   }
"     \ }
" autocmd User LspSetup call LspOptionsSet(lspOpts)
" let lspServers = [#{
" 	\    name: 'golang',
" 	\    filetype: ['go', 'gomod'],
" 	\    path: 'gopls',
" 	\    args: ['serve'],
" 	\    syncInit: v:true
" 	\  }]
" autocmd User LspSetup call LspAddServer(lspServers)
