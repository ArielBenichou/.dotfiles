"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"               ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"               ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"               ██║   ██║██║██╔████╔██║██████╔╝██║
"               ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║
"                ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"                 ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" SETTINGS -------------------------------------------------------------- {{{
" Turn syntax highlighting on.
syntax on

set encoding=UTF-8

" Use if exists the .vimrc of cwd
set exrc

" Set the cursor on insert mode to block
set guicursor=

" Relative line nubmers up and down of current line
set relativenumber

" Add numbers to each line on the left-hand side.
set nu

" No highlight search -- so the highlight does not keep after search
set nohlsearch

set hidden

" disable sound of error
set noerrorbells

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4 softtabstop=4

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally
" highlight matching characters as you type.
set incsearch

set noswapfile
set undodir=~/.vim/undodir
set undofile

" the grey column at the left side
set signcolumn=yes

" red column telling me that i'm a bad programmer
set colorcolumn=80

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Give more space to cmd message
set cmdheight=2

" Enable type file detection.
" Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" }}}

" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')

  Plug 'prabirshrestha/vim-lsp'

  Plug 'dense-analysis/ale'

  " Plug 'preservim/nerdtree'

  Plug 'arcticicestudio/nord-vim'

  Plug 'bluz71/vim-nightfly-guicolors'

  Plug 'gruvbox-community/gruvbox'

  Plug 'kyoz/purify', { 'rtp': 'vim' }

  Plug 'vim-airline/vim-airline'

  " Plug 'ryanoasis/vim-devicons'

call plug#end()

" }}}

" MAPPINGS --------------------------------------------------------------- {{{

let mapleader = " "

" Alt Escape of insert mode
inoremap jj <esc>

" Disable the arrows
nnoremap <Left> :echo "No left for you!"<CR>
vnoremap <Left> :<C-u>echo "No left for you!"<CR>
inoremap <Left> <C-o>:echo "No left for you!"<CR>
nnoremap <Right> :echo "No right for you!"<CR>
vnoremap <Right> :<C-u>echo "No right for you!"<CR>
inoremap <Right> <C-o>:echo "No right for you!"<CR>
nnoremap <Up> :echo "No up for you!"<CR>
vnoremap <Up> :<C-u>echo "No up for you!"<CR>
inoremap <Up> <C-o>:echo "No up for you!"<CR>
nnoremap <Down> :echo "No down for you!"<CR>
vnoremap <Down> :<C-u>echo "No down for you!"<CR>
inoremap <Down> <C-o>:echo "No down for you!"<CR>

nnoremap <leader><space> :

" nnoremap <leader>ps :NERDTreeFocus<CR>
" nnoremap <leader>pS :NERDTreeToggle<CR>

" }}}

" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" Start NERDTree and leave the cursor in it.
" autocmd VimEnter * NERDTree

fun! TrimWhiteSpace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup MINI_SCARABEE
    autocmd!
    autocmd BufWritePre * :call TrimWhiteSpace()
augroup END
" }}}

" STATUS BAR  ------------------------------------------------------------ {{{
" fun! GitBranch()
"   return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
" endfun
"
" fun! StatuslineGit()
"   let l:branchname = GitBranch()
"   return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
" endfun

" set statusline=
" set statusline+=%#PmenuSel#
" set statusline+=%{StatuslineGit()}
" set statusline+=%#LineNr#
" set statusline+=\ %f
" set statusline+=%m\
" set statusline+=%=
" set statusline+=%#CursorColumn#
" set statusline+=\ %y
" set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
" set statusline+=\[%{&fileformat}\]
" set statusline+=\ %p%%
" set statusline+=\ %l:%c
" set statusline+=\

" }}}

" options: gruvbox, purify, nord, nightfly
colorscheme gruvbox
