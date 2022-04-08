"import
runtime ./plug.vim
runtime ./maps.vim
runtime ./myfunc.vim
runtime ./treesitter.vim
colorscheme NeoSolarized

"setting
set cursorcolumn
set cursorline
set completeopt+=menuone,noselect,noinsert
set nowritebackup
set encoding=utf-8
set fileencodings=utf-8
set relativenumber
set noswapfile
set title
set nobackup
set cmdheight=1
set autoindent
set smarttab
set smartindent
set inccommand=split
set lazyredraw
set ignorecase
set shiftwidth=2
set tabstop=2
set autoindent
set termguicolors
set timeoutlen=1000
set ttimeoutlen=0
set signcolumn=number
set number
set numberwidth=3
set scrolloff=8
set sidescrolloff=8
scriptencoding utf-8
set list lcs=tab:\ \ 
filetype on
filetype plugin on
filetype indent on
			
"var
let g:AutoPairsMapCR=0
let g:prettier#exec_cmd_async = 1
let g:prettier#autoformat_require_pragma = 0
let g:prettier#autoformat = 1
let g:startify_bookmarks = [
				\{'i':'~/.config/nvim/init.vim'},
				\{'p':'~/.config/nvim/plug.vim'},
				\{'m': '~/.config/nvim/maps.vim'}
			\]
let g:startify_change_to_dir = 0
let g:startify_files_number = 4
let g:startify_lists = [
				\{'type':'files','header':[' 		Recent']},
				\{'type': 'bookmarks','header':[' 		Bookmarks']}
			\]
let g:startify_custom_header= 'startify#fortune#boxed()'
let g:startify_enable_special = 1
let g:NERDTreeWinSize=16
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = ['^node_modules$']
let php_sql_query=1
let g:AutoPairsMultilineClose=0
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}
		
"autocmd
autocmd InsertEnter * set autoindent 
autocmd InsertEnter * set nohlsearch
autocmd InsertEnter * NERDTreeClose
autocmd InsertLeave * set hlsearch
autocmd InsertLeave,InsertEnter * set cursorline!
autocmd InsertLeave,InsertEnter * set cursorcolumn!
autocmd BufReadPost *.vim try | loadview | catch || endtry
autocmd BufWritePost *.vim silent call feedkeys("ggVG") | try | foldclose | catch || endtry | mkview | call feedkeys("V")
autocmd BufNewFile *.php 0r ~/.config/nvim/templates/file.php
autocmd BufEnter *.php set filetype=php

"highlight color	
"hi cursorline guibg=gray20
"hi cursorcolumn guibg=gray20
"hi statusline guibg=white guifg=darkcyan
"hi tablinefill guifg=darkcyan
"hi cursorlinenr guifg=grey40
"hi linenr guifg=grey40i
