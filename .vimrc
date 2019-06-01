set nocompatible
filetype off
"Vundle"
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'bling/vim-airline'
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'eiiches/vim-rainbowbrackets'
Plugin 'Syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'flazz/vim-colorschemes'
Plugin 'Valloric/YouCompleteMe'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sleuth'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'qpkorr/vim-bufkill'
Plugin 'skywind3000/vim-preview'
Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'ryanoasis/vim-devicons'

call vundle#end()
filetype plugin indent on
"air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline#extensions#tabline#enabled = 1
" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

"Airline theme
let g:airline_theme = 'hybrid'

"Key configuration
imap <F2> <Esc><F2>
nmap <F2> :TagbarToggle<CR>
imap <F3> <Esc><F3>
nmap <F3> :bprev<CR>
imap <F4> <Esc><S-F4>
nmap <F4> :bnext<CR>
imap <F12> <Esc><F12>
nmap <F12> :NERDTreeToggle<CR>

colorscheme moonshine_lowcontrast

"Display options
set cursorline " highlight current line
set noshowmode " do not show mode because airline shows it
highlight ColorColumn ctermbg=Darkgray
set colorcolumn=80 " color the 80-th column
set cmdheight=1 " height of command bar
set number " turn on line numbers
set lz " do not redraw while running macros
set noerrorbells " do not make noise
set novisualbell
set hlsearch
set t_vb=
set showmatch   " Show matching brackets.
set matchtime=2 " How many tenths of a second to blink
set list
set listchars="" " Reset the listchars
set listchars=tab:▸▸ " make tabs visible
set listchars+=trail:• " show trailing spaces as dots
"The character to show in the last column when wrap is off and the line
" continues beyond the right of the screen
set listchars+=extends:>
"The character to show in the last column when wrap is off and the line
" continues beyond the left of the screen
set listchars+=precedes:<
set splitbelow
"Smart case search
set smartcase
"Disable swap files
set noswapfile
"Always show cursor position
set ruler
"More undo memory
set history=1000

"Text formatting
set tabstop=8
set backspace=indent,eol,start " Delete everything with backspace
set shiftwidth=8 " Tabs under smart indent
set autoindent

"NerdTree width
let g:NERDTreeWinSize=30

"Taglist width
let g:tagbar_width=30

"Syntastic
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
nnoremap <C-w>E :SyntasticCheck<CR> :SyntasticToggleMode<CR>

"Set mouse support
set mouse=a

"Set clipboard
set clipboard=unnamedplus

" You complete me configuration
let g:ycm_always_populate_location_list = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

" Gitgutter
let g:gitgutter_enabled = 1
let g:gitgutter_signs = 1

" Swap organizer
set directory^=$HOME/.vim/tmp//

" Branch statusline
set statusline=%{FugitiveStatusline()}

set guifont=Source\Code\Pro\12

"Spellcheck
nmap <F7> :set spell spelllang=en_us<CR>
nmap <F8> :set nospell<CR>


