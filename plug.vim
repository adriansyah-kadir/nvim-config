if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()


if has("nvim")
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'tpope/vim-surround'
	Plug 'jiangmiao/auto-pairs'
	Plug 'preservim/nerdtree'
	Plug 'junegunn/fzf.vim'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'mhinz/vim-startify'
	Plug 'ap/vim-css-color'
	Plug 'dag/vim-fish'
	Plug 'ryanoasis/vim-devicons'
	Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'mg979/vim-visual-multi', {'branch': 'master'}
endif


call plug#end()

