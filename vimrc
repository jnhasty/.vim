set nocompatible                  " Must come first because it changes other options.

silent! call pathogen#runtime_append_all_bundles()

:setlocal spell spelllang=en_us   " spellchecking

syntax enable                     " Turn on syntax highlighting.
filetype plugin indent on         " Turn on file type detection.

runtime macros/matchit.vim        " Load the matchit plugin.

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.

set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set number                        " Show line numbers.
set ruler                         " Show cursor position.

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set wrap                          " Turn on line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.

set title                         " Set the terminal's title

set visualbell                    " No beeping.

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set directory=$HOME/bin/vimconf//,.  " Keep swap files in one location

" UNCOMMENT TO USE
set tabstop=4                    " Global tab width.
set shiftwidth=4                 " And again, related.
set expandtab                    " Use spaces instead of tabs
set softtabstop=4
set smartindent
set autoindent

set laststatus=2                  " Show the status line all the time

" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

" remove trailing whitepace
autocmd BufWritePre * :%s/\s\+$//e

"turn on autocomplete
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction

:inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
:iabbrev </ </<C-X><C-O>

let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
set wildmode=longest,list,full
set wildmenu

autocmd FileType python set omnifunc=pythoncomplete#Complete

autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
au FileType javascript set dictionary+=$HOME/.vim/dict/node.dict
let g:node_usejscomplete = 1

autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
set ofu=syntaxcomplete#Complete 



autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag.vim/plugin/closetag.vim 
 
colorscheme vividchalk 

" Tab mappings.
map <leader>tt :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove<cr>
map <leader>tg :TlistToggle<cr>
" Uncomment to use Jamis Buck's file opening plugin
"map <Leader>t :FuzzyFinderTextMate<Enter>

" Automatic fold settings for specific files. Uncomment to use.
 autocmd FileType ruby setlocal foldmethod=syntax
 autocmd FileType css  setlocal foldmethod=indent shiftwidth=4 tabstop=4
 autocmd FileType python  setlocal foldmethod=syntax

" For the MakeGreen plugin and Ruby RSpec. Uncomment to use.
autocmd BufNewFile,BufRead *_spec.rb compiler rspec

" lusty explorer
let g:LustyExplorerSuppressRubyWarning = 1
let g:butExplorerShowRelativepath = 1


" syntastic
let g:syntastic_auto_loc_lis=1
let g:syntastic_enable_signs=1

"tags list
let Tlist_Auto_Open = 1

" Go Lang
set rtp+=$GOROOT/misc/vim
filetype plugin indent on
syntax on
