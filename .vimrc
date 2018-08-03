execute pathogen#infect()
syntax on
set t_Co=256
set t_ut=
set background=dark
colorscheme snow
filetype plugin indent on

" basic configs
set number
set termguicolors
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab

" custom map keys
map <c-o> :bn<CR>
map <c-i> :bp<CR>
map <c-q> :bw<CR>

" fzf configuration
set rtp+=/usr/local/opt/fzf
map <c-p> :FZF<CR>
autocmd! FileType fzf tnoremap <buffer> <leader>q <c-p>
nnoremap <silent> <expr> <c-p> (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":FZF\<cr>"

" enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tmuxline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1

" syntastic configs
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" nerd tree configurations
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

nnoremap <silent> <Leader>v :NERDTreeFind<CR>

let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeShowHidden = 1
