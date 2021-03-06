set nocompatible
filetype off
"Vundle"
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/bin/fzf
call vundle#begin()

"Airline plugin
Plugin 'bling/vim-airline'

"Plugin manager
Plugin 'VundleVim/Vundle.vim'

"Nerdtree file explorer
Plugin 'scrooloose/nerdtree'

"Rainbow brackets
Plugin 'eiiches/vim-rainbowbrackets'

"Ale syntax check
Plugin 'dense-analysis/ale'

"YouCompleteMe
Plugin 'ycm-core/YouCompleteMe'

"Tagbar
Plugin 'majutsushi/tagbar'

"Show git changes in column (+, -, ~)
Plugin 'airblade/vim-gitgutter'

"Change surrounding brackets etc.
Plugin 'tpope/vim-surround'

"Git plugin
Plugin 'tpope/vim-fugitive'

"Airline themes
Plugin 'vim-airline/vim-airline-themes'

"Kill buffer without breaking vim
Plugin 'qpkorr/vim-bufkill'

"Nerdtree and git coop
Plugin 'xuyuanp/nerdtree-git-plugin'

"Icons for nerdtree
Plugin 'ryanoasis/vim-devicons'

"Git tree
Plugin 'gregsexton/gitv'

"BUffer explorer
Plugin 'jlanzarotta/bufexplorer'

"Fuzzy finder
Plugin 'junegunn/fzf.vim'

"Indent lines
Plugin 'Yggdroot/indentLine'

"NERD Commenter
Plugin 'preservim/nerdcommenter'

"Colorschemes
Plugin 'fcpg/vim-fahrenheit'

"Detect indentation
Plugin 'tpope/vim-sleuth'

"Clang format
Plugin 'rhysd/vim-clang-format'

"Colorschemes
Plugin 'rafi/awesome-vim-colorschemes'

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
let g:airline_theme = 'biogoo'

"Airline extensions
let g:airline#extensions#tabline#enabled = 1

"Key configuration
imap <F2> <Esc><F2>
nmap <F2> :TagbarToggle<CR>
imap <F3> <Esc><F3>
nmap <F3> :bprev<CR>
imap <F4> <Esc><S-F4>
nmap <F4> :bnext<CR>
imap <F12> <Esc><F12>
nmap <F12> :NERDTreeToggle<CR>

set t_Co=256
colorscheme tender

"Display options
set cursorline " highlight current line
set noshowmode " do not show mode because airline shows it
highlight ColorColumn ctermbg=DarkGray
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
set listchars=tab:>- " make tabs visible
set listchars+=trail:· "Show trailing spaces as dots
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

"NerdTree width
let g:NERDTreeWinSize=40

"Taglist width
let g:tagbar_width=40

"Set mouse support
set mouse=a
set ttymouse=xterm2

"Set clipboard
set clipboard=unnamedplus

" Gitgutter
let g:gitgutter_enabled = 1
let g:gitgutter_signs = 1

" Swap organizer
set directory^=$HOME/.vim/tmp//

" Branch statusline
set statusline=%{FugitiveStatusline()}

set guifont=3270Medium\ Nerd\ Font\ Bold\ 11

"Spellcheck
nmap <F7> :set spell spelllang=en_us<CR>
nmap <F8> :set nospell<CR>

"Indent lines
let g:indentLine_color_term = 239
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

"Autoread
set autoread

"Diffs in split view
set diffopt+=vertical
