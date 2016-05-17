runtime bundle/vim-pathogen/autoload/pathogen.vim

set wildmenu
set showcmd
set hlsearch

set ignorecase
set smartcase

set autoindent

set visualbell

set number
set relativenumber

set shiftwidth=4
set softtabstop=4
set expandtab
set tabstop=4

nnoremap <CR> :noh<CR>

execute pathogen#infect()

syntax on
filetype plugin indent on

" Append modeline after last line in buffer.
" " Use substitute() instead of printf() to handle '%%s' modeline in LaTeX
" " files.
function! AppendModeline()
    let l:modeline = printf(" vim: set ts=%d sw=%d tw=%d %set :",
                \ &tabstop, &shiftwidth, &textwidth, &expandtab ? '' : 'no')
    let l:modeline = substitute(&commentstring, "%s", l:modeline,"")
    call append(line("$"), l:modeline)
endfunction

nnoremap <silent> <Leader>ml :call AppendModeline()<CR>
