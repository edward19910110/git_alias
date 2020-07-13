set autoread
set nu
set ruler

filetype on
filetype indent on
syntax on

set hlsearch
set incsearch
set ignorecase

set autoindent
set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab
set splitright

set t_Co=256
set background=dark

set showmatch

set laststatus=2
set statusline=%4*%<\ %1*[%F]
set statusline+=%4*\ %5*[%{&encoding}, " encoding
set statusline+=%{&fileformat}%{\"\".((exists(\"+bomb\")\ &&\ &bomb)?\",BOM\":\"\").\"\"}]%m
set statusline+=%4*%=\ %6*%y%4*\ %3*%l%4*,\ %3*%c%4*\ \<\ %2*%P%4*\ \>
highlight User1 ctermfg=red
highlight User2 term=underline cterm=underline ctermfg=green
highlight User3 term=underline cterm=underline ctermfg=yellow
highlight User4 term=underline cterm=underline ctermfg=white
highlight User5 ctermfg=cyan
highlight User6 ctermfg=white

set mouse=nv
if has("autocmd")    
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif    
endif

set rtp+=~/Tool/tabnine-vim
