set autoindent
set smartindent

"tab to space
set tabstop=8
set shiftwidth=8
set expandtab
set softtabstop=8
set smarttab

"no swap file and no backup
setlocal noswapfile 
set bufhidden=hide 
set nobackup 

set viminfo+=! 

set incsearch

set showmatch

set so=4

set ruler

set laststatus=2

set mouse=v
nmap <silent> <leader>ma :set mouse=a<cr>
nmap <silent> <leader>mv :set mouse=v<cr>

"buffer
"noremap j <esc>:bn<cr>
"noremap k <esc>:bp<cr>

set encoding=utf8

set cursorline

set hlsearch


"auto completion
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {}<ESC>i
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap \" \"\"<ESC>i
:inoremap \" <c-r>=ClosePair('"')<CR>

function ClosePair(char)
	if getline('.')[col('.') - 1] == a:char
		return "\<Right>"
	else
		return a:char
	endif
endf

noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l

nmap <silent> <leader>dma :delm!<cr>

nmap <silent> <leader>fc :%s/\s\+$//g<cr>
nmap <silent> <leader>et <ESC>:set expandtab<ESC>
nmap <silent> <leader>tt <ESC>:set noexpandtab<ESC>
nmap <silent> <leader>FF <ESC>ggvG=<ESC>
nmap <silent> <leader>ff <ESC>[[v%=<ESC>

"nmap <silent> <c-s> <ESC>:w
"im <c-s> <ESC>:w<CR>
