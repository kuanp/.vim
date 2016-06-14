" runtime! debian.vim

 execute pathogen#infect()

 syntax enable
 if has('gui_running')
		set background=light
 else
		set background=dark
 endif

 set background=dark
 colorscheme solarized
 "colorscheme blackboard

 set wildmenu

 "folding options
 let c_no_curly_error=1
 set foldmethod=syntax
 nnoremap <space> za
 nnoremap ^ 0

 "ignores case while searching
 set ignorecase
 set smartcase
 set incsearch
 set hlsearch

 set scrolloff=3
 set cindent
 set autoindent
 set showcmd
 set showmatch
 set mouse=a
 set columns=83  "80 actual, due to line numbers
 "set textwidth=79
 "set wm=2

 set number
 set ai
 filetype plugin indent on
 autocmd BufEnter * :syntax sync minlines=200

 set ruler
 set visualbell
 set noendofline binary

 autocmd Syntax * syn match Error /\s\+$\| \+\ze\t/ containedin=ALL display
 au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "no    rm $"|endif|endif

 command CleanUpWhiteSpace  %s/ \+$//
 highlight ExtraWhitespace ctermbg=red guibg=red
 match ExtraWhitespace /\s\+$/
 autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
 autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
 autocmd InsertLeave * match ExtraWhitespace /\s\+$/
 autocmd BufWinLeave * call clearmatches()

 set tabstop=2
 set shiftwidth=2
 set expandtab
 "set softtabstop=2
