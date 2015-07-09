"Notes {{{
" <space> opens fold 
" <za> closes folds
" Typing :set runtimepath? will display the helptags
" To debug _vimrc run the following command
" vim -V9vim.log _vimrc
" }}}

"Vim commands {{{
" Ctrl+y or u moves the screen up
" Ctrl+e or d moves the screen down
" gg+VG select all 
" }}}

"Pathogen setup  {{{         
set nocompatible
filetype off 

execute pathogen#infect()
syntax on

" To ignore plugin indent changes
filetype indent on 
" }}}

"Folding {{{"
set foldmethod=marker
set foldlevel=0
set modelines=1
" }}}

"NERDTree {{{"
" Toggle NERDTree with F2 key
map <F2> :NERDTreeToggle<CR>
" }}}

"Powerline setup {{{
" terminal types: amiga beos-ansi ansi pcansi win32 vt320 vt52 xterm iris-ansi debug dumb
set term=xterm
set encoding=utf-8
set guifont=Consolas_for_Powerline_FixedD:h10
" let g:Powerline_symbols = 'fancy'
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
let g:Powerline_mode_V="V·LINE"
let g:Powerline_mode_cv="V·BLOCK"
let g:Powerline_mode_S="S·LINE"
let g:Powerline_mode_cs="S·BLOCK"
" }}}

"Misc {{{"
Helptags

" Highlight excess line length
augroup vimrc_autocmds
    autocmd!
    " highlight characters past column 120
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python match Excess /\%120v.*/
    autocmd FileType python set nowrap
    augroup END
	
" Vim syntax highlight
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"

" Set vim color scheme
colorscheme badwolf

" highlight current line
set cursorline    

" leader is comma   
" let mapleader=','      

" jk is escape
inoremap jk <esc>

" Use <leader>l to toggle display of whitespace
nmap <leader>l :set list!<CR>
" automatically change window's cwd to file's dir
set autochdir

" I'm prefer spaces to tabs
set tabstop=4
set shiftwidth=4
set expandtab

" more subtle popup colors 
if has ('gui_running')
    highlight Pmenu guibg=#cccccc gui=bold    
endif
" }}}

"Python-mode {{{

" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)

" Turn on the whole plugin
let g:pymode = 1

" Turn on the run code script
let g:pymode_run = 1
let g:pymode_run_bind = "<C-S-e>"

" Turn on pymode rope
let g:pymode_rope = 1

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = ['pyflakes' ,'pep8', 'mccabe']

" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0
" }}}

"Enable line numbers {{{

set number
" }}}

" vim:foldmethod=marker:foldlevel=0
