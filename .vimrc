" syntastic
execute pathogen#infect()
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" general configs
syntax on
set t_Co=256
set t_ut=
set background=dark
set encoding=utf8
" themes available (nord-vim, snow, dracula, forest-night)
colorscheme nord
" transparent background
hi Normal guibg=NONE ctermbg=NONE

filetype plugin indent on

" basic configs
set number
set linebreak
set showbreak=+++
set textwidth=100
set showmatch
"set mouse=a
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab

" golang configs
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1

" tabs by filetype
autocmd FileType php setlocal tabstop=4 shiftwidth=4 smarttab

" custom map keys
map <c-o> :bn<CR>
map <c-i> :bp<CR>
map <c-e> :bw<CR>
map <c-f> :bd#<CR>

map <c-b> :lprevious<CR>
map <c-n> :lnext<CR>

" fzf configuration
set rtp+=~/.fzf
map <c-p> :FZF<CR>
autocmd! FileType FZF tnoremap <buffer> <leader>q <c-p>
nnoremap <silent> <expr> <c-p> (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":FZF\<cr>"

" proto config
augroup filetype
  au! BufRead,BufNewFile *.proto setfiletype proto
augroup end

" enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tmuxline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:powerline_pycmd = 'py3'
let g:airline_powerline_fonts = 1
let g:airline_theme = 'nord'

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
let NERDTreeWinSize = 50

" indentLine
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
