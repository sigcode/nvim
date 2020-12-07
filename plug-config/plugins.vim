if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
    autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
"
" " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
    Plug 'junegunn/vim-easy-align'
" Include Phpactor
    Plug 'preservim/nerdcommenter'
    Plug 'phpactor/phpactor' ,  {'do': 'composer install', 'for': 'php'}
    Plug 'frazrepo/vim-rainbow'
    Plug 'airblade/vim-gitgutter'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'morhetz/gruvbox'
    Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
"    Plug 'liuchengxu/vim-which-key'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
"    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'airblade/vim-rooter'
    Plug 'wesQ3/vim-windowswap'
    Plug 'tpope/vim-commentary'
    Plug 'mhinz/vim-startify'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
call plug#end()
