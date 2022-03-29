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
call plug#end()

" Vim AirLine Config
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#buffer_idx_mode = 1
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
