silent! call pathogen#runtime_append_all_bundles()
set nocompatible                  " Must come first because it changes other options.

set lines=56
set columns=108

syntax enable                     " Turn on syntax highlighting.
filetype plugin indent on         " Turn on file type detection.

runtime macros/matchit.vim        " Load the matchit plugin.

let mapleader=","

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.

set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set number                        " Show line numbers.
set ruler                         " Show cursor position.

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set wrap                          " Turn on line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.

set title                         " Set the terminal's title

set visualbell                    " No beeping.

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set directory=$HOME/.vim/tmp//,.  " Keep swap files in one location


set tabstop=2                    " Global tab width.
set shiftwidth=2                 " And again, related.
set expandtab                    " Use spaces instead of tabs

set laststatus=2                  " Show the status line all the time
" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

" ---------------------------------------------------------------------
"  Backups ~ taken from rtomayko
" ---------------------------------------------------------------------

set nobackup                           " do not keep backups after close
set nowritebackup                      " do not keep a backup while working
set noswapfile                         " don't keep swp files either
set backupdir=$HOME/.vim/backup        " store backups under ~/.vim/backup
set backupcopy=yes                     " keep attributes of original file
set backupskip=/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*
set directory=~/.vim/swap,~/tmp,.      " keep swp files under ~/.vim/swap


" ---------------------------------------------------------------------
"  Open URL on current line in browse ~ from rtomayko
" ---------------------------------------------------------------------

function! Browser ()
    let line0 = getline (".")
    let line = matchstr (line0, "http[^ )]*")
    let line = escape (line, "#?&;|%")
    exec ':silent !open ' . "\"" . line . "\""
endfunction

map <Leader>w :call Browser ()<CR>

" -----------------------------------------------------------------------
"  Strip all trailing whitespace in file ~ from rtomayko
" -----------------------------------------------------------------------

function! StripWhitespace ()
    exec ':%s/ \+$//gc'
endfunction
map ,s :call StripWhitespace ()<CR>

" Clear the search highlight
map <Leader>f <Esc>:let @/=""<Enter>

" Scratch File
map <Leader>a :e ~/Dropbox/life.txt<Enter>

" preview current buffer in browser, parsed through markdown
map <Leader>pm :!markdown % \|bcat

" TODO: Add 'reload' command for aliasing :source ~/.vimrc
" tab indenting

" Tab to tab
map <D-/> gcc
vmap <S-Tab> <gv
vmap <Tab> >gv

" Tab auto complete
" imap <Tab> <C-N>

au FocusLost * :wa                " Save when I switch to another application

" Clojure Niceties
let clj_highlight_builtins = 1
let clj_want_gorilla = 1

abbrev reload :source ~/.vimrc

" toggle rainbowk
nmap <leader>R :RainbowParenthesesToggle<CR>
