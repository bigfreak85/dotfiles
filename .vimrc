"Meine VIM Konfig
syntax on
set tabstop=2
set shiftwidth=2
set backup
set expandtab
set softtabstop=2
set backupdir=~/.vim/backupdir/
set backupskip=~/.vim/backupdir/*
set writebackup
set autoindent
set hlsearch
set laststatus=2
set hidden
set undodir=~/.vim/undodir
set undolevels=1000
set undoreload=1000



let vimDir = '$HOME/.vim'
let &runtimepath.=','.vimDir
if has('persistent_undo')
	let myUndoDir = expand(vimDir . '/undodir')
	" Create dirs
	call system('mkdir ' . vimDir)
	call system('mkdir ' . myUndoDir)
	let &undodir = myUndoDir
	set undofile
endif

