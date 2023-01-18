vim.api.nvim_exec(

[[
let vimDir = '$HOME/.vim'
let &runtimepath.=','.vimDir
if has('persistent_undo')
        let myUndoDir = expand(vimDir . '/undodir')
" Create dirs
"
        call system('mkdir ' . vimDir)
        call system('mkdir ' . myUndoDir)
        let &undodir = myUndoDir
        set undofile
endif
]],
true)
