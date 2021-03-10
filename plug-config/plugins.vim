if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
 ""   autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
"
" " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'godlygeek/tabular'
Plug 'yggdroot/indentline'
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
Plug 'tpope/vim-surround'
Plug 'voldikss/vim-floaterm'
Plug 'jacoborus/tender.vim'
    Plug 'junegunn/vim-easy-align'
    Plug 'thaerkh/vim-workspace'
    Plug 'mhinz/vim-signify'
    Plug 'glepnir/oceanic-material'
    Plug 'jwalton512/vim-blade'
    Plug 'ayu-theme/ayu-vim'
    Plug 'higuri/tscwatch.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'
Plug 'jacoborus/tender.vim'
Plug 'nightsense/carbonized'
" Include Phpactor
    Plug 'preservim/nerdcommenter'
    Plug 'phpactor/phpactor' ,  {'do': 'composer install', 'for': 'php'}
    Plug 'frazrepo/vim-rainbow'
    Plug 'airblade/vim-gitgutter'
    Plug 'airblade/vim-rooter'
    "Plug 'seb-h-k/phpcomplete.vim'
    Plug 'ludovicchabant/vim-gutentags'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'morhetz/gruvbox'
    Plug 'kyoz/purify', { 'rtp': 'vim' }
"   Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
"    Plug 'liuchengxu/vim-which-key'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
"    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'airblade/vim-rooter'
    Plug 'wesQ3/vim-windowswap'
    Plug 'tpope/vim-commentary'
    Plug 'mhinz/vim-startify'
    Plug 'vim-airline/vim-airline'
 ""   Plug 'shawncplus/phpcomplete.vim'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'ryanoasis/vim-devicons'
call plug#end()
