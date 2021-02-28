
let g:mapleader = "space"
syntax on

source $HOME/.config/nvim/plug-config/plugins.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/coc-extensions.vim
"source $HOME/.config/nvim/plug-config/vim-whichkey.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/airline.vim
"source $HOME/.config/nvim/vscode/settings.vim
source $HOME/.config/nvim/plug-config/start-screen.vim



syntax enable                           " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
"set fileencoding=utf-8                  " The encoding written to file
set ruler                               "     Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                        " treat dash separated words as a word text object""
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=4                           " Insert 2 spaces for a tab
set shiftwidth=4                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=0                        " Always display the status line
set number                              " Line numbers
set textwidth=120 

set colorcolumn=120
"let g:indentLine_setColors = 0
let g:indentLine_color_term = 239
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
set cursorline                          " Enable highlighting of the current line
let g:webdevicons_enable_startify = 1
set background=dark                     " tell vim what the background color looks like>
  set guifont=DroidSansMono\ Nerd\ Font\ 11
set showtabline=2                       " Always show tabs
set noshowmode                          " We don'"t need to see things like -- INSERT -- anymore
set noswapfile
set nobackup                            " This is recommended by coc
set undodir=~/.config/nvim/undodir
set undofile
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion~
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
filetype indent on
set filetype=html
set filetype=blade.php
"set autochdir                           " Your working directory will always
let g:webdevicons_enable = 1
au! BufWritePost "/home/www-data/.config/nvim/init.vim" source %      " auto source when writing to init.vm

colorscheme gruvbox
imap ii <ESC>
"autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
vmap <leader>f  <Plug>(coc-format-selected)
"autocmd FileType * let b:coc_suggest_disable = 1
nmap <leader>f  <Plug>(coc-format-selected)
" Better nav for omnicomplete TODO figure out why this is being overridden
inoremap <expr> <c-j> ("\<C-n>")
let g:rooter_manual_only = 1
let g:rooter_patterns = ['^core']
inoremap <expr> <c-k> ("\<C-p>")
tnoremap <Esc> <C-\><C-n>
let g:gutentags_project_root = ['Makefile']
nmap <Tab>1 :bfirst<CR>
nmap <Tab>2 :bfirst<CR>:bn<CR>
nmap <Tab>3 :bfirst<CR>:2bn<CR>
nmap <Tab>4 :bfirst<CR>:3bn<CR>
nmap <S-Tab> :bnext<CR>
let g:NERDCreateDefaultMappings = 1
nmap <S-Up> :-10
nmap <S-Down> :+10
nmap <S-j> :+10<CR>
nmap <S-k> :-10<CR>
" Make Ranger replace netrw and be the file explorer
let g:rnvimr_ex_enable = 1
"
let g:floaterm_keymap_toggle = '<space>t'
let g:floaterm_keymap_next   = '<F2>'
let g:floaterm_keymap_prev   = '<F3>'
let g:floaterm_keymap_new    = '<F4>'

" Floaterm
let g:floaterm_gitcommit='floaterm'
let g:floaterm_autoinsert=1
let g:floaterm_width=0.9
let g:floaterm_height=0.9
let g:floaterm_wintitle=0
let g:floaterm_autoclose=1
nmap <space>w :RnvimrToggle<CR>
"au VimEnter * split
"au VimEnter * resize -22
"au VimEnter * term
"au VimEnter * wincmd k
" turn hybrid line numbers on
:set number relativenumber
:set nu rnu
