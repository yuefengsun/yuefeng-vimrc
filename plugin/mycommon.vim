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

set mouse=v
nmap <silent> <leader>ma :set mouse=a<cr>
nmap <silent> <leader>mv :set mouse=v<cr>

set encoding=utf8

set cursorline



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

nmap <silent> <leader>dma :delm!<cr>
