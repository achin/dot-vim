set lines=36 columns=90

if has("gui_macvim")
    macmenu &File.New\ Tab key=<nop>
endif

if has("gui_running")
    set guioptions=emgrt
    set cursorline
endif
