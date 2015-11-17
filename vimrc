" runtime! debian.vim

 execute pathogen#infect()

 syntax enable
 if has('gui_running')
		set background=light
 else
		set background=dark
 endif

 set background=light
 colorscheme solarized
 "colorscheme blackboard

 set wildmenu

 let c_no_curly_error=1
 set foldmethod=syntax
 nnoremap <space> za
 set incsearch
 nnoremap ^ 0
 set ignorecase
 set smartcase
 set scrolloff=3
 set cindent
 set autoindent
 set showcmd
 set showmatch
 set mouse=a
 set columns=80
 "set textwidth=79
 "set wm=2

 set tabstop=2
 set shiftwidth=2
 set softtabstop=2
 set expandtab
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
