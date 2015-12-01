let g:vimwiki_camel_case = 0
let g:vimwiki_list = [{'path': '~/Nutstore/vimwiki',"syntax": "markdown"}]

map <leader>a :VimwikiToggleListItem<CR>


" diary map
map <leader>m <ESC>ggO## <C-R>=strftime("%Y %m %d %A")<CR><ESC>5o<ESC>ggJj^i<tab>*Inbox*<CR>*Action*<CR>*Waiting*<ESC>kk

" Driver diary map
map <leader>dy <ESC>ggO## <C-R>=strftime("%Y %m %d %A")<CR><ESC>5o<ESC>ggJj^i<tab>*Liyanhui*<CR>*Liubin*<CR>*Wangwanpeng*<CR>*Mahaibo*<CR>*Chentianle*<CR>*Sundeyi*<CR>*Guxinzhu*<CR>*Zhangjunfeng*<CR>*Shangweizhen*<CR>*Litianxiong*<CR>- Todo<ESC>oDone<ESC>k2yy2kp2kp2kp2kp2kp2kp2kp2kp2kp

