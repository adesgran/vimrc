" Left Numbers
set number relativenumber

" Indent settings
set autoindent smartindent
set shiftwidth=4
set noexpandtab tabstop=4
set smarttab

" Persistent cmd display
set showcmd

" Settings for plugins
nnoremap <Space> <NOP>
vnoremap <Space> <NOP>
let mapleader = "\<Space>"
filetype plugin on

" Plugins Manager (vim-plug by junegunn on Github)
call plug#begin()
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/terryma/vim-multiple-cursors'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/vim-airline/vim-airline-themes'
Plug 'https://github.com/skywind3000/asyncrun.vim'
Plug 'https://github.com/preservim/nerdcommenter'
Plug 'https://github.com/tmhedberg/simpylfold'
call plug#end()

" Vim AirLine Config
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline_theme='bubblegum'

" NerdCommenter Config
let g:NERDCreateDefaultMapping = 1
let g:NERSSpaceDelims = 1
let g:NERDCompactSexyComs = 0
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_c = 1
let g:NERDCustomDelimiters = {'c': {'left': '//'}}
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1
nnoremap <silent> <leader>c} V}:call NERDComment('x', 'toggle')<CR>
nnoremap <silent> <leader>c{ V{:call NERDComment('x', 'toggle')<CR>

" SimplyFold Config
set foldmethod=indent
let g:SimpylFold_docstring_preview = 0
let g:SimpylFold_fold_docstring = 1
let b:SimpylFold_fold_docstring = 1
let g:SimpylFold_fold_import = 1
let b:SimpylFold_fold_import = 1
let g:SimpylFold_fold_blank = 0
let b:SimpylFold_fold_blank = 0

" Hardcore mode
function! EnableHardcore(...)
	nnoremap <Left> :echo "No left for you!"<CR>
	vnoremap <Left> :<C-u>echo "No left for you!"<CR>
	inoremap <Left> <C-o>:echo "No left for you!"<CR>
	nnoremap <Right> :echo "No left for you!"<CR>
	vnoremap <Right> :<C-u>echo "No left for you!"<CR>
	inoremap <Right> <C-o>:echo "No left for you!"<CR>
	nnoremap <Up> :echo "No left for you!"<CR>
	vnoremap <Up> :<C-u>echo "No left for you!"<CR>
	inoremap <Up> <C-o>:echo "No left for you!"<CR>
	nnoremap <Down> :echo "No left for you!"<CR>
	vnoremap <Down> :<C-u>echo "No left for you!"<CR>
	inoremap <Down> <C-o>:echo "No left for you!"<CR>
endfunction
autocmd VimEnter * call EnableHardcore()
au VimEnter 'clear Lock' -e 'keycode 0x42 = Escape'

" Shortcuts for Fugitive (GIT)
nnoremap <leader>gp :Git push<CR>
nnoremap <leader>ga :Git add %<CR>
nnoremap <leader>gc :Git commit<CR>

" Personnals Shortcuts
nnoremap <leader>l $
nnoremap <leader>k gg
nnoremap <leader>j G
nnoremap <leader>h 0

" Fold Shortcuts
nnoremap <leader>zo zR
nnoremap <leader>zc zM

" Buffer Selector

nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

au BufRead,BufNewFile .mybash set filetype=bash
