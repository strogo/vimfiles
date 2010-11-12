set nocompatible
filetype off
autocmd!
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set ls=2
set statusline=%f
set statusline+=\ [%{&ff}]\ %y
set statusline+=\ (%(%l/%L-%c)%)
set statusline+=\ %{fugitive#statusline()}
set statusline+=\ %{rvm#statusline()}

"display a warning if fileformat isnt unix
set statusline+=%#warningmsg#
set statusline+=%{&ff!='unix'?'['.&ff.']':''}
set statusline+=%*

"Display a warning if file encoding isnt utf-8
set statusline+=%#warningmsg#
set statusline+=%{(&fenc!='utf-8'&&&fenc!='')?'['.&fenc.']':''}
set statusline+=%*

filetype on
filetype plugin on
filetype indent on
syntax on

set spelllang=en_us
nmap <silent> <leader>s :set spell!<CR>

let moria_style = 'dark'
color moria
hi LineNr guifg=#555555 guibg=NONE

set linespace=2
set number
set numberwidth=4
set lines=45
set columns=200
set enc=utf-8

set ignorecase
set nobackup
set nowb
set noswapfile

set expandtab
set shiftwidth=2
set tabstop=2
set smarttab
set autoindent

set lbr

set ai
set si
set wrap

let g:twitvim_enable_python=1
let twitvim_api_root = "https://twitter.com"
let g:gist_open_browser_after_post = 1
let g:jekyll_post_suffix = "textile"
let g:jekyll_post_published = "true"
let g:jekyll_path = "."
let g:jekyll_post_created = "%Y-%m-%dT%H:%M:%S%z"

if has("gui_mac") || has("gui_macvim")
  set guifont=Consolas:h13
  set transparency=0
  let g:gist_browser_command = 'open %URL%'
  let g:gist_clip_command = 'pbcopy'  
  let g:twitvim_browser_cmd = 'open'  " browser to use
endif

if has("gui_win32") || has("gui_win32s")
  set guifont=Consolas:h10
  behave mswin
  let g:twitvim_browser_cmd = 'C:\Users\claco\AppData\Local\Google\Chrome\Application\chrome.exe'
endif

set guioptions-=m
set guioptions-=T

inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

imap jk <ESC>
imap kj <ESC>

