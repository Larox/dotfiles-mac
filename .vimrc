" set tabstop=2 shiftwidth=2 expandtab
" set number

" Use https://github.com/junegunn/vim-plug to install plugins in Vim
call plug#begin('~/.vim/plugged')

Plug 'vim-syntastic/syntastic'
Plug 'https://github.com/itchyny/lightline.vim'
Plug 'https://github.com/Yggdroot/indentLine.git'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'nightsense/stellarized'

call plug#end()

"=================== GENERAL SETTINGS
set number
nmap <F6> :NERDTreeToggle<CR>
set noet ci pi sts=0 sw=2 ts=2
syntax on

"================== Color Theme
"---------- Color Reference: https://github.com/nightsense/stellarized
"---------- More Colors: vimcolors.com
if strftime('%H') >= 7 && strftime('%H') < 19
  set background=light
  let g:airline_theme= { 'colorscheme': 'stellarized_light' }
else
  set background=dark
  let g:lightline = { 'colorscheme': 'stellarized_dark' }
endif
colorscheme stellarized

  let g:airline_theme='stellarized_light'
"set background=light 
"colorscheme stellarized

"=================== PLUGIN SETTINGS


"--------------- itchyny/lightline.vim
" Reference: https://github.com/itchyny/lightline.vim
set laststatus=2

let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

"--------------- Yggdroot/identLine
" Reference: https://github.com/Yggdroot/indentLine

let g:identLine_enable = 1
let g:indentLine_color_term = 239
let g:indentLine_bgcolor_gui = '#FF5F00'
let g:indentLine_char = '┆'
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 1

"--------------- Syntastyc
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = 'npm run lint --'


"--------------- NERD tree
" Reference: https://github.com/scrooloose/nerdtree
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden=1


