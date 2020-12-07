
 

nmap <space>e :CocCommand explorer<CR>
nmap <space>t :CocCommand coc-terminal-toggle<CR>
nmap <space>r :RG <CR>
nmap <space>p :Files <CR>
nmap <space>f :BLines <CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif
set hidden
set nobackup
set nowritebackup
set updatetime=300
set shortmess+=c
if has("patch-8.1.1564")
      " Recently vim can merge signcolumn and number column into one
set signcolumn=number
 else
set signcolumn=yes
endif

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
      let col = col('.') - 1
        return !col || getline('.')[col - 1]  =~# '\s'
    endfunction

if has('nvim')
      inoremap <silent><expr> <c-space> coc#refresh()
  else
        inoremap <silent><expr> <c-@> coc#refresh()
    endif

    nmap <silent> [g <Plug>coc-diagnostic-prev)(
    nmap <silent> ]g <Plug>(coc-diagnostic-next))


nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> K :call <SID>show_documentation()<CR>

"nmap <leader>rn <Plug>(coc-rename)
"xmap <leader>f  <Plug>(coc-format-selected)
"nmap <leader>f  <Plug>(coc-format-selected)
"xmap <leader>a  <Plug>(coc-codeaction-selected)
"nmap <leader>a  <Plug>(coc-codeaction-selected)
