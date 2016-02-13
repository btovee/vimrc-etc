set nocompatible              " be iMproved, required

so ~/.vim/plugins.vim

syntax enable

colorscheme atom-dark
"colorscheme desert

set backspace=indent,eol,start                    "Make backspace behave like other editors.
let mapleader = ','                               "Default leader is \ change to , . 
set number                                        "Activate line numbers

"---------------Search---------------------"
set hlsearch
set incsearch 

"--------------Split Management------------"

set splitright
set splitbelow

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>
nmap <C-H> <C-W><C-H>



"---------------Mappings---------------------"

"Easy toggle for nerd tree
nmap <leader>1 :NERDTreeToggle<cr>

"Ctrlp plugin quick search within a file.
nmap <c-R> :CtrlPBufTag<cr>

"Make it easy to edit the vimrc file.
nmap <leader>ev :tabedit $MYVIMRC<cr>

"Add Simple search highlight removal
nmap <leader><space> :nohlsearch<cr>

"-------------Plugin settings---------------"

let g:ctrlp_match_window = "top,order:ttb,min:1,max:30,results:30"


"--------------Mappings----------------------"
"Automatically source the .vimrc on save.

augroup autosoucing
	autocmd BufWritePost .vimrc source %
augroup End  
