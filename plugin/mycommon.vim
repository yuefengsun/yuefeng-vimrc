"vim使用自动对齐
set autoindent

"依据上面的对齐方式,智能选择第二行对齐方式,对于类似C语言变成
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

"查找时提示
set incsearch


"设置匹配模式,类是当输入一个左括号会相应匹配右括号
set showmatch

"当浏览时 到离边界7行时 文件随之上/下移动
set so=4

"打开状态栏标尺
set ruler

"enable mouse
set mouse=v
nmap <silent> <leader>ma :set mouse=a<cr>
nmap <silent> <leader>mv :set mouse=v<cr>

"设置编码
set encoding=utf8

"突出显示当前行
set cursorline



"自动补齐括号
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

"-----------------------------------------------------------------------
"winmanager设置
let g:winManagerWindowLayout='FileExplorer|TagList'
"映射F8为winManager开关
nmap <silent> <leader>fl :WMToggle<cr>
"把列表在右侧显示
let Tlist_Use_Right_Window=1
"让当前不被编辑的文件的方法列表自动折叠起来， 这样可以节约一些屏幕空间
let Tlist_File_Fold_Auto_Close = 1
"设置关闭buffer时,自动关闭vim
let Tlist_Exit_OnlyWindow=1
"禁止自动改变当前Vim窗口的大小
let Tlist_Inc_Winwidth=0
"-----------------------------------------------------------------------


"设置用方向键实现窗口的切换 
let g:miniBufExplMapWindowNavArrows = 1

noremap <C-K> <C-W>j
noremap <C-I> <C-W>k
noremap <C-J> <C-W>h
noremap <C-L> <C-W>l

