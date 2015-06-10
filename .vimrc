


 set nocompatible               " be iMproved
 filetype off                   " required!

" set rtp+=~/.vim/bundle/vundle/
" call vundle#rc()

 " let Vundle manage Vundle
 " required! 
 "Bundle 'gmarik/vundle'

" These lines: Bundle 'blah/foo' are paths at github
" NOT AVAILABLE UNTIL I UPGRADE VIM
" Bundle 'Valloric/YouCompleteMe'

" HMMM this next requirement is DUMB
" filetype plugin indent on     " required!
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..


" search highlighting
set hlsearch

" toggle spellchecking (the ! is part of the command)
" :setlocal spell!

command Spellcheck :setlocal spell!



" get rid of annoying "beep"
set visualbell

set showcmd
set ruler

filetype on

function Nerdy()
	:NERDTreeToggle
	":hi Directory guifg=#FF0000 ctermfg=red
endfunction

let NERDTreeIgnore = ['\.pyc$','\.db$','\.class$','\.o$','\.exe$','\.obj$']

"map <F6> :NERDTreeToggle<CR>
map <F6> :exec Nerdy()<CR>
map <F7> :syntax enable<CR>
map <F8> :syntax off<CR>
map <F9> :set number!<CR>

" use exctags with code http://vim-taglist.sourceforge.net
map <F10> :TlistToggle<CR>

" jump to next underscore, useful for C programs
map <F11> /_<CR>:nohlsearch<CR>
map <F4> :nohlsearch<CR>

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

"line numbers are relative to current line
"set relativenumber

set wildignore=*.o,*.obj,*.exe,*.pyc,*.class,*.pyc
set hidden

set tabstop=2

set makeprg=gmake

highlight comment ctermfg=lightblue
highlight constant ctermfg=red

nmap <silent> <leader><leader> [{V%zf

" show whitespace
" must be present before colorscheme command is set
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/


" syntax highlighting colorscheme to use
" if you remove this line the normal color scheme is nice
"colorscheme darkblue
colorscheme desert

set showmatch

"nmap <C-j> mz:m+<CR>`z
"nmap <C-k> mz:m-2<CR>`z
"imap <C-j> <Esc>:m+<CR>gi
"imap <C-k> <Esc>:m-2<CR>gi
"vmap <C-j> :m'>+<CR>`<my`>mzgv`yo`z
"vmap <C-k> :m'<-2<CR>`>my`<mzgv`yo`z

"map <M-k> ddp
"map <M-j> ddkP
"imap <M-j> <Esc>ddpi
"imap <M-k> <Esc>ddkPi

" move between buffers
nmap > :bn<CR>
nmap < :bp<CR>

" move betwixt tabs
map <C-v><C-t> :tabnew<CR>
map <C-v><C-n> :tabn<CR>
map <C-v><C-p> :tabp<CR>

command FOR exe "normal afor(;;) {\n\n}\e<k><k>"
command WHILE exe "normal awhile() {\n\n}<k><k>"
command IF exe "normal aif() {\n\n}<k><k>"
command SC exe "normal astd::cout << \""
command SE exe "normal a << std::endl;"
command COUT exe "normal astd::cout << \"\" << std::endl;"
command SS exe "normal astd::string"
command CSS exe "normal aconst std::string"
command SV exe "normal astd::vector<"
command CSV exe "normal aconst std::vector<"
command SVSS exe "normal astd::vector<std::string> "
command SVI exe "normal astd::vector<int> "
command CSVSS exe "normal aconst std::vector<std::string> "
command CSVI exe "normal aconst std::vector<int> "
command SM exe "normal astd::map<,> "
command PF0 exe "normal aprintf(\"\\n\");"
command PF exe "normal aprintf(\"%d\\n\",);"
command FATAL exe "normal astd::cout << \"FATAL ERROR\" << std::endl;"
command STDCC exe "normal a\n\n#include <iostream>\n#include <map>\n#include <vector>\n#include <string>\n#include <sstream>\n#include <fstream>\n#include <cstdlib>\n#include <cmath>\n#include <algorithm>\n#include <cctype>\n#include <new>\n\nint main(int argc,char **argv)\n{\n\n\treturn 0;\n}\n\n"

command STDPY exe "normal a#!/usr/bin/env python\n\nimport string\nimport time\nimport datetime\nimport os\nimport sys\nimport random\nimport shutil\nimport sqlite3\nimport zipfile\nimport cgi\nimport Cookie\n\n#sys.path.append(os.path.abspath(\"foo\"))\n\ndef usage():\n\tprint \"\"\n\tprint \"\"\n\tprint \"\"\n\ndef main_function(argv):\n\n\n\tprint \"done\"\n\n\n\nif __name__==\"__main__\":\n\tmain_function(sys.argv)\n\n"

" center the window on current line is now mapped to spacebar in normal mode
nmap <space> zz


" these cnoremap commands let me have home key navigation in command mode
"cnoremap <C-a> <Home>
"cnoremap <C-e> <End>
"cnoremap <C-p> <Up>
"cnoremap <C-n> <Down>
"cnoremap <C-b> <Left>
"cnoremap <C-f> <Right>
"cnoremap <M-b> <S-Left>
"cnoremap <M-f> <S-Right>
"cnoremap <C-k> exec

"set iskeyword-=_  " possibly use this to make underscores work like words
"set word-=_  " possibly use this to make underscores work like words

" cscope ???
" ctags ???
"  -- use exctags and not original ctags
"  -- exuhberant ctags !!!!!


execute pathogen#infect()

	" NERDTree has a problem displaying the "+" next to directories
	" This next line fixes it.
	" I have read that setting LANG environment var can fix it too
let g:NERDTreeDirArrows=0

