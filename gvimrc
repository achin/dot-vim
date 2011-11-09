set lines=36 columns=90

if has("gui_macvim")
    macmenu &File.New\ Tab key=<nop>
    map <D-t> :CommandT<CR>
endif

if has("gui_running")
    set guioptions=emgrt
endif
