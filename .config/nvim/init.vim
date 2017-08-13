if &compatible
    set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/me/.local/share/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/me/.local/share/dein')
    call dein#begin('/home/me/.local/share/dein')

    " Let dein manage dein
    " Required:
    call dein#add('/home/me/.local/share/dein/repos/github.com/Shougo/dein.vim')

    " Add or remove your plugins here:
    call dein#add('Shougo/neosnippet.vim')
    call dein#add('Shougo/neosnippet-snippets')
    call dein#add('lervag/vimtex')
    call dein#add('justinmk/vim-sneak')
    call dein#add('vim-airline/vim-airline')

    " Required:
    call dein#end()
    call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif


set tabstop=4                                           " A tab is 4 spaces
set expandtab                                           " Always uses spaces instead of tabs
set softtabstop=4                                       " Insert 4 spaces when tab is pressed
set shiftwidth=4                                        " An indent is 4 spaces
set shiftround                                          " Round indent to nearest shiftwidth multiple
set smartindent                                         " 

set number
set relativenumber

set showmatch
set incsearch hlsearch                                  " highlight search pattern
hi Search cterm=bold ctermbg=4 ctermfg=50
set cursorline                                          " highlight current line
hi CursorLine cterm=bold ctermbg=236 guibg=Grey40
hi Visual cterm=NONE ctermbg=23 ctermfg=21
set lazyredraw


let mapleader = " "
map <MiddleMouse> <Nop>            " disable pasting via mouse wheel
imap <MiddleMouse> <Nop>
vmap <Leader>y "+y                  " shortcuts to work with clipboard
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

nnoremap <Leader>av :tabnew $MYVIMRC<CR>
set wildchar=<Tab> wildmenu wildmode=full
set wildcharm=<C-Z>
nnoremap <F10> :b <C-Z>


" tab navigation
nnoremap tn  :tabnew<Space>

nnoremap to :tabnext<CR>
nnoremap tp :tabprev<CR>

nnoremap tN :tabfirst<CR>
nnoremap tO :tablast<CR>


let g:vimtex_view_method = 'zathura'

" LaTeX macros for compiling and viewing
augroup latex_macros " {
    autocmd!       
    autocmd FileType tex :nnoremap <Leader>c :w<CR>:!latexmk -pdf %<CR>
    autocmd FileType tex :nnoremap <Leader>v :!zathura %:r.pdf &<CR><CR>
augroup END " }


" auto reload vimrc
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }
