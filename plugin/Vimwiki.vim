let g:vimwiki_camel_case = 0
let g:vimwiki_list = [{'path': '~/Nutstore/vimwiki',"syntax": "markdown"}]

map <leader>a :VimwikiToggleListItem<CR>


" diary map
map <leader>m <ESC>ggO## <C-R>=strftime("%Y %m %d %A")<CR><ESC>5o<ESC>ggJj^i<tab>*Inbox*<CR>*Action*<CR>*Waiting*<ESC>kk

