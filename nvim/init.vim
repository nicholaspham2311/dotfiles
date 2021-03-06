call plug#begin()
Plug 'simeji/winresizer'
let g:winresizer_start_key = "<leader>w"

Plug 'liuchengxu/vista.vim'
nmap <leader>t :Vista!!<CR>

Plug 'tpope/vim-repeat'
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

Plug 'jdhao/better-escape.vim'
let g:better_escape_interval = 200
let g:better_escape_shortcut = 'jj'

Plug 'easymotion/vim-easymotion'
hi link EasyMotionTarget Search
map  <Leader><space> <Plug>(easymotion-bd-w)
nmap <Leader><space> <Plug>(easymotion-overwin-w)

Plug 'mattn/emmet-vim'
let g:user_emmet_leader_key=','
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-surround'
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'

Plug 'preservim/nerdcommenter'
let g:NERDSpaceDelims = 1
map mm <Plug>NERDCommenterToggle

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
imap <c-x><c-f> <plug>(fzf-complete-path)

if isdirectory(".git")
    noremap <leader>f :GFiles<cr>
else
    noremap <leader>f :Files<cr>
endif

noremap <leader>b :Buffers<CR>
noremap <leader>F :Files ~<CR>
noremap <leader>r :Rg<CR>

noremap <c-p> :Commands<CR>
noremap // :BLines<CR>
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'
let g:fzf_colors =
            \ { 'fg':      ['fg', 'Normal'],
            \ 'bg':      ['bg', 'Normal'],
            \ 'hl':      ['fg', 'Comment'],
            \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
            \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
            \ 'hl+':     ['fg', 'Statement'],
            \ 'info':    ['fg', 'PreProc'],
            \ 'border':  ['fg', 'Ignore'],
            \ 'prompt':  ['fg', 'Conditional'],
            \ 'pointer': ['fg', 'Exception'],
            \ 'marker':  ['fg', 'Keyword'],
            \ 'spinner': ['fg', 'Label'],
            \ 'header':  ['fg', 'Comment'] }

Plug 'neoclide/coc.nvim', {'branch': 'release'}
set hidden
set shortmess+=c
set signcolumn=yes
set updatetime=100
let g:coc_global_extensions = [
            \ "coc-css",
            \ "coc-html",
            \ "coc-snippets",
            \ "coc-json",
            \ "coc-python",
            \ "coc-clangd",
            \ "coc-sh",
            \ "coc-sql",
            \ "coc-explorer",
            \ "coc-tsserver",]

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

inoremap <silent><expr> <TAB>
            \ pumvisible() ? coc#_select_confirm() :
            \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

Plug 'honza/vim-snippets'

nmap <space>e :CocCommand explorer<CR>

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

Plug 'mbbill/undotree'
set undodir=~/git/ok/undodir
set undofile
nnoremap <leader>u :UndotreeShow<CR>

Plug 'iamcco/markdown-preview.nvim', {'do': 'cd app & yarn install'}
let g:mkdp_markdown_css = '~/.config/nvim/stuff/github-markdown.css'

Plug 'romainl/vim-cool' " when search done, turn off highlight

set hlsearch
set ignorecase
set incsearch
set smartcase
set magic
nnoremap n nzzzv
nnoremap N Nzzzv

Plug 'mhinz/vim-signify'
Plug 'mkitt/tabline.vim'
highlight ExtraWhitespace ctermbg=None

Plug 'luochen1990/rainbow'
let g:rainbow_active = 1
Plug 'sheerun/vim-polyglot'
Plug 'gregsexton/MatchTag', { 'for': 'html' }
Plug 'norcalli/nvim-colorizer.lua'
autocmd BufRead,BufNewFile * :ColorizerAttachToBuffer
Plug 'junegunn/limelight.vim'

Plug 'NLKNguyen/papercolor-theme'
Plug 'sainnhe/gruvbox-material'
call plug#end()

syntax enable
highlight WildMenu guifg=#78A79C
set termguicolors
source ~/git/dotfiles/nvim/darkOrLight.vim
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)

autocmd InsertLeave,WinEnter * set cursorline
autocmd InsertEnter,WinLeave * set nocursorline

set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

set tabstop=4 softtabstop=4 noet
set shiftwidth=4
autocmd BufRead,BufNewFile *.scss,*.css,*.html setlocal tabstop=2 shiftwidth=2 softtabstop=2
set expandtab

set number relativenumber

set nocompatible
filetype plugin indent on
set encoding=UTF-8
set mouse=a
set clipboard=unnamedplus

set autoindent
set smartindent
set autoread
set autowrite
set nobackup
set noswapfile
set lazyredraw
set nowritebackup

nnoremap + <C-a>
nnoremap - <C-x>

vmap < <gv
vmap > >gv

map <space> <leader>

nmap <C-t> :tabnew<Return>
nmap <S-j> gT
nmap <S-k> gt

noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt

nmap <space>s :setlocal spell! spell?<CR>
" ]s — move to the next mispelled word
" [s — move to the previous mispelled word
" zg — add a word to the dictionary
" zug — undo the addition of a word to the dictionary
" z= — view spelling suggestions for a mispelled word

command! Reload execute "source ~/.config/nvim/init.vim"

nnoremap <space>? :echo expand("%:p")<CR>

nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w

" write file when you forgot root
command! W execute "w !sudo tee %"

nmap <leader>a :call FloatTerm()<CR>
nmap <leader>g :call FloatTerm('"tig"')<CR>
nmap <leader>h :call FloatTerm('"htop"')<CR>
function! FloatTerm(...)
    let height = float2nr((&lines - 2) * 0.6)
    let row = float2nr((&lines - height) / 2)
    let width = float2nr(&columns * 0.6)
    let col = float2nr((&columns - width) / 2)

    let border_opts = {
                \ 'relative': 'editor',
                \ 'row': row - 1,
                \ 'col': col - 2,
                \ 'width': width + 4,
                \ 'height': height + 2,
                \ 'style': 'minimal'
                \ }

    let opts = {
                \ 'relative': 'editor',
                \ 'row': row,
                \ 'col': col,
                \ 'width': width,
                \ 'height': height,
                \ 'style': 'minimal'
                \ }
    let top = "╭" . repeat("─", width + 2) . "╮"
    let mid = "│" . repeat(" ", width + 2) . "│"
    let bot = "╰" . repeat("─", width + 2) . "╯"
    let lines = [top] + repeat([mid], height) + [bot]
    let bbuf = nvim_create_buf(v:false, v:true)
    call nvim_buf_set_lines(bbuf, 0, -1, v:true, lines)
    let s:float_term_border_win = nvim_open_win(bbuf, v:true, border_opts)
    let buf = nvim_create_buf(v:false, v:true)
    let s:float_term_win = nvim_open_win(buf, v:true, opts)

    hi FloatWinBorder guifg=#78A79C
    call setwinvar(s:float_term_border_win, '&winhl', 'Normal:FloatWinBorder')
    call setwinvar(s:float_term_win, '&winhl', 'Normal:Normal')
    if a:0 == 0
        terminal
    else
        call termopen(a:1)
    endif
    startinsert
    autocmd TermClose * ++once :bd! | call nvim_win_close(s:float_term_border_win, v:true)
endfunction

augroup General
    autocmd!
    autocmd BufNewFile *.cpp :read ~/.config/nvim/stuff/cppTemplate.cpp | normal!kdd3j
    autocmd BufNewFile *.fish  :call CheckFishFile()
    autocmd BufNewFile *.py :call CheckPyFile()
    autocmd BufNewFile *.sh  :call CheckShFile()
    autocmd BufWritePre * :call TrimWhitespace()
augroup END

function! CheckShFile()
    normal!i#! /usr/bin/env sh
    normal!o
endfunction

function! CheckPyFile()
    normal!i#! /usr/bin/env python3
    normal!o
endfunction

function! CheckFishFile()
    normal!i#! /usr/bin/env fish
    normal!o
endfunction

fun! TrimWhitespace()
  let l:save = winsaveview()
  keeppatterns %s/\s\+$//e
  call winrestview(l:save)
endfun
command! TrimWhitespace call TrimWhitespace()
