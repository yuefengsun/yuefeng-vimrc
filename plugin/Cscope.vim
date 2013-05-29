if has("cscope")
        "set cscopequickfix=s-,c-,d-,i-,t-,e-

        " use both cscope and ctag for 'ctrl-]', ':ta', and 'vim -t'        
        set cscopetag
        " check cscope for definition of a symbol before checking ctags: set to 1    
        " if you want the reverse search order.
        set csto=0
        " show msg when any other cscope db added
        set cscopeverbose
        
        " add any cscope database in current directory
        if filereadable("cscope.out")
                cs add cscope.out
        " else add the database pointed to by environment variable
        elseif $CSCOPE_DB != ""
                cs add $CSCOPE_DB
        endif

        "   's'   symbol: find all references to the token under cursor
        "   'g'   global: find global definition(s)
        "   'c'   calls:  find all calls to the function name under cursor
        "   't'   text:   find all instances of the text under cursor
        "   'e'   egrep:  egrep search for the word under cursor
        "   'f'   file:   open the filename under cursor
        "   'i'   includes: find files that include the filename under cursor
        "   'd'   called: find functions that function under cursor calls

        nmap <silent> <leader>css :cs find s <C-R>=expand("<cword>")<cr><cr>
        nmap <silent> <leader>csg :cs find g <C-R>=expand("<cword>")<cr><cr>
        nmap <silent> <leader>csc :cs find c <C-R>=expand("<cword>")<cr><cr>
        nmap <silent> <leader>cst :cs find t <C-R>=expand("<cword>")<cr><cr>
        nmap <silent> <leader>cse :cs find e <C-R>=expand("<cword>")<cr><cr>
        nmap <silent> <leader>csf :cs find f <C-R>=expand("<cfile>")<cr><cr>
        nmap <silent> <leader>csi :cs find i ^<C-R>=expand("<cfile>")<cr><cr>
        nmap <silent> <leader>csd :cs find d <C-R>=expand("<cword>")<cr><cr>


endif
