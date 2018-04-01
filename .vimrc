" General settings {{{
" Always use UTF-8 encoding
set encoding=utf-8
set fileencoding=utf-8
scriptencoding utf8
" Use Unix line endings
set fileformats=unix
" Start scrolling when cursor is 4 lines off the bound
set scrolloff=4
" Enable filetype plugin
filetype plugin indent on
" Always check spelling since I often do typos
set spell spelllang=en_us
" Indent after brackets, etc
set smartindent
" }}}
" UI {{{
" Always show status
set laststatus=2
" Enable syntax highlighting
if !has('g:syntax_on')
  syntax enable
endif
" Show line numbers
set number
" Display line and column numbers, relative position, etc at the bottom
set ruler
" Highlight current line
set cursorline
" Add a vertical line to mark the line width limit
set colorcolumn=81
highlight ColorColumn ctermbg=DarkMagenta
" Enable visual autocomplete menu
set wildmenu
" Do not redraw when unnecessary
set lazyredraw
" Highlight matching bracket
set showmatch
" Searching {{{
" Enable incremental search
set incsearch
" Highlight chunks of text matching the search pattern
set hlsearch
" Search ignores case unless an uppercase letter appears in the pattern
set ignorecase
set smartcase
" }}}
" Backup {{{
" Don't create backup files
set noswapfile
set nowritebackup
" }}}
" Spaces & Tabs {{{
" Always prefer spaces over tabs, use 2 spaces everywhere except in few
" languages
set tabstop=8
set expandtab
set softtabstop=2
set shiftwidth=2
set shiftround
" }}}
" Custom commands & functions {{{
" Autoformat selected code using Clang-format
noremap <leader>cf :pyf /home/omtcvxyz/dev/projects/src/llvm/tools/clang/tools/clang-format/clang-format.py<cr>
" }}}
" Language-specific settings {{{
" In Python and Rust 4 spaces should be used instead of 2
autocmd FileType Python set softtabstop=4| set shiftwidth=4| set colorcolumn=80
autocmd FileType Rust   set softtabstop=4| set shiftwidth=4
" Always use LaTeX
let g:tex_flavor='latex'
" }}}
" }}}
" Plugins configuration {{{
" Vim-Plug directives {{{
" Initialize plugin system
call plug#begin('~/.vim/plugged')
" A bunch of general plugins {{{
Plug 'SirVer/ultisnips'
Plug 'donRaphaco/neotex', { 'for': 'tex' }
Plug 'godlygeek/tabular'
Plug 'honza/vim-snippets'
Plug 'junegunn/goyo.vim'
Plug 'justinmk/vim-sneak'
Plug 'majutsushi/tagbar'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'omtcvxyz/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" }}}
" Language specific-plugins, LSP servers, etc {{{
" Multiple languages {{{
Plug 'w0rp/ale'
" }}}
" Rust {{{
Plug 'racer-rust/vim-racer'
Plug 'rust-lang/rust.vim'
" }}}
" LaTeX {{{
Plug 'lervag/vimtex'
" }}}
" Markdown {{{
Plug 'plasticboy/vim-markdown'
" }}}
" }}}
call plug#end()
" }}}
" Plugins-specific settings {{{
let g:airline_theme='solarized'
let g:cpp_clangtidy_checks=[]
" }}}
" vim-colors-solarized {{{
" Enable solarized colorscheme after its initialization via vim-plug
set background=dark
colorscheme solarized
" Highlight trailing whitespace {{{
" This has to come after plugins configuration, because vim-colors-solarized
" would prevent extra whitespace highlight otherwise.
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$/
" }}}
" }}}
" Vim Markdown {{{
let g:vim_markdown_folding_disabled = 1
" }}}
" Vim-Polyglot {{{
let g:polyglot_disabled = ['latex']
" }}}
" Vimtex {{{
let g:vimtex_compiler_latexmk = {'callback' : 0}
" }}}
" }}}
" }}}
" vim:foldmethod=marker:foldlevel=0
