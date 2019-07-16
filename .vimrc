
execute pathogen#infect()
syntax on
filetype plugin indent on

set nobackup
set nowb
set noswapfile
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set number
set relativenumber


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

try
    " colorscheme desert
    colorscheme focuspoint
catch
endtry

set background=dark

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac
" Toggle paste mode on and off
let mapleader = ","
map <leader>pp :setlocal paste!<cr>
nmap <leader>w :w!<cr>

let g:jedi#completions_enabled = 0
let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"
let g:airline#extensions#tabline#enabled = 1
set runtimepath^=~/.vim/bundle/ctrlp.vim
autocmd BufWritePre * %s/\s\+$//e
let g:python_highlight_all = 1
set clipboard=unnamed
" Macros
let @d = 'oimport ipdb; ipdb.set_trace()'
let @p = 'oprint("")hi'
let @t = 'oimport time
t = time.time()oprint("time taken {}ms".format(round(((time.time() - t)*1000), 4)))dd'

