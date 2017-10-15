"" NeoVIM RC.
"" gist: https://gist.github.com/DarrylDias/84e610786f60b2e62d65

" Most of the FZF stuff comes from
" https://github.com/dkarter/dotfiles/blob/master/vimrc

"NeoBundle Scripts-----------------------------
if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=~/.config/nvim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.config/nvim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
" NeoBundle 'Shougo/neosnippet.vim'
" NeoBundle 'Shougo/neosnippet-snippets'
"NeoBundle 'Shougo/neocomplete.vim'
"NeoBundle 'tpope/vim-fugitive'
" NeoBundle 'Shougo/vimproc.vim', {
" \ 'build' : {
" \   'mac' : 'make',
" \   },
" \ }
NeoBundle 'thinca/vim-ref'
" NeoBundle 'kien/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
" NeoBundle 'rking/ag.vim'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'majutsushi/tagbar'
"NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'scrooloose/syntastic'
" NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'jiangmiao/auto-pairs'
" NeoBundle 'sanmiguel/helpex.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'elmcast/elm-vim'
NeoBundle 'maralla/vim-toml-enhance', {'depends': 'cespare/vim-toml'}
" "NeoBundle 'rfeldman/node-elm-test'
"NeoBundle 'haya14busa/incsearch.vim'
"NeoBundle 'jaxbot/semantic-highlight.vim'
"eoBundle 'skwp/greplace.vim'
"NeoBundle 'tpope/vim-endwise'
NeoBundle 'ayu-theme/ayu-vim'
" NeoBundle 'jceb/vim-orgmode'

NeoBundle 'sheerun/vim-polyglot'
NeoBundle 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

NeoBundle 'junegunn/limelight.vim'
NeoBundle 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
NeoBundle 'junegunn/fzf.vim'
" Elixir Support
NeoBundle 'slashmili/alchemist.vim'

" Execute code checks, find mistakes, in the background
NeoBundle 'neomake/neomake'
  " Run Neomake when I save any buffer
  augroup localneomake
    autocmd! BufWritePost * Neomake
  augroup END
  " Don't tell me to use smartquotes in markdown ok?
  let g:neomake_markdown_enabled_makers = []
  let g:neomake_elixir_enabled_makers = ['mix', 'credo']

NeoBundle 'c-brenn/phoenix.vim'
NeoBundle 'tpope/vim-projectionist' " required for some navigation features

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

:set shell=/bin/bash
:set tabstop=2         " indent 2 spaces per tab
:set shiftwidth=2
:set softtabstop=2
:set expandtab         " don't use tabs, but spaces
:set shiftround       "    

:set numberwidth=5     " 5 spaces in the number column
:set autoindent        " autoindent
:set showfulltag       " show the tag and the source of the tag
:set ignorecase        " don't care about upper lowercase in search
:set smartcase         " Case insensitive searches become sensitive with capitals
:set incsearch         " show search results
:set hlsearch          " show the matching part
function! MapCR()
  nnoremap <cr> :nohlsearch<cr>
endfunction
call MapCR()

nnoremap n nzz

:set title             " set the title of iterm window
:set encoding=utf-8
:set hidden            " allow unsaved background buffers and remember marks/undo for them
:set history=1000
:set cursorline        " highlight the current cursor line
:set cursorcolumn      " highlight the current column the cursor is in
:set cmdheight=2
:set scrolloff=3       " keeps more context when scrolling off the end of the buffer
:set showcmd           " display incomplete command
:set nofoldenable      " Say no to code folding...
:set laststatus=2

:set wildmode=list:full
:set wildmenu
:set nobackup          " no backup file
:set noswapfile
:set noerrorbells        " No beeps.
:set vb t_vb=

" open a new windows on the right side or below
" this is more helpful than vim defaults
:set splitright
:set splitbelow

" Don't add the comment prefix when I hit enter or o/O on a comment line.
:set formatoptions-=or

set relativenumber
set number

:syntax on
":filetype plugin indent on
:set backspace=indent,eol,start

let mapleader=","
nnoremap <leader><leader> <c-^>

" jump out of brackets or quotes
imap <C-o> <Esc>2la

" <Ctrl-l> redraws the screen and removes any search highlighting.
" seen by Fredrik Folsen (@ique)
" at https://github.com/folsen/vimfiles/blob/master/vimrc
nnoremap <silent> <C-l> :nohl<CR><C-l>

" toggle semantic highlighting 
" (https://medium.com/@evnbr/coding-in-color-3a6db2743a1e)
" :nnoremap <Leader>s :SemanticHighlightToggle<cr>

" autocmd BufRead,BufNewFile *.pks set filetype=plsql
" autocmd BufRead,BufNewFile *.pkb set filetype=plsql

" highlight ExtraWhitespace ctermbg=196 guibg=#FF1100 ctermfg=white guifg=white
highlight ExtraWhitespace ctermbg=196 guibg=#FF1100 ctermfg=grey guifg=grey
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/

" Remove trailing whitespace on save for ruby files.
au BufWritePre *.rb :%s/\s\+$//e

" map anoying typing errors

" Move around splits with <c-hjkl>
" nnoremap <c-j> <c-w>j
" nnoremap <c-k> <c-w>k
" nnoremap <c-h> <c-w>h
" nnoremap <c-l> <c-w>l

map k gk
map j gj

" Maps ,e and ,v to open files in the same directory as the current file
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :edit %%
map <leader>v :view %%

" map silver searcher
map <leader>a :Ag!<space>

nmap <F8> :TagbarToggle<CR>

noremap <leader>y "*y
noremap <leader>yy "*Y

" map /  <Plug>(incsearch-forward)
" map ?  <Plug>(incsearch-backward)
" map g/ <Plug>(incsearch-stay)

" open and close nerdtree
map <C-n> :NERDTreeToggle<CR>

" if nvim is started wihtout a file nerdtree will be started automatically
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" hint to keep lines short
if exists('+colorcolumn')
  set colorcolumn=80
  highlight ColorColumn  ctermbg=237
endif

" Some config stuff for Gsearch
set grepprg=ag\ --vimgrep\ $*
set grepformat=%f:%l:%c:%m
let g:grep_cmd_opts = '--line-numbers --noheading'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" RENAME CURRENT FILE (thanks Gary Bernhardt)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" rename current file, via Gary Bernhardt
function! RenameFile()
  let old_name = expand('%')
  let new_name = input('New file name: ', expand('%'))
  if new_name != '' && new_name != old_name
    exec ':saveas ' . new_name
    exec ':silent !rm ' . old_name
    redraw!
  endif
endfunction
map <leader>n :call RenameFile()<cr>

""""""""""""""""""""""""""""""
" airline
" """"""""""""""""""""""""""""""
" let g:airline#extensions#branch#enabled = 1
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'

" let g:airline#extensions#branch#enabled = 1


let g:airline_theme = 'luna'
"let g:airline_theme = 'lucius'
let g:bufferline_echo = 0
let g:airline_powerline_fonts=1
let g:airline_enable_branch=1
let g:airline_enable_syntastic=1
let g:airline_branch_prefix = '⎇ '
let g:airline_paste_symbol = '∥'
let g:airline#extensions#tabline#enabled = 0
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MULTIPURPOSE TAB KEY
" Indent if we're at the beginning of a line. Else, do completion.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-n>

set background=dark
" colorscheme twilight256
set termguicolors     " enable true colors support
let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
colorscheme ayu
" highlight Normal ctermbg=NONE

" Display extra whitespace and leading tabs
" stolen from Tim Pope (https://github.com/tpope/tpope/blob/master/.vimrc)
if (&termencoding ==# 'utf-8' || &encoding ==# 'utf-8') && version >= 700
  let &listchars = "tab:\u21e5\u00b7,trail:\u2423,extends:\u21c9,precedes:\u21c7,nbsp:\u26ad"
  let &fillchars = "vert:\u259a,fold:\u00b7"
else
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<
endif
if exists('+macmeta')
  set macmeta
endif

" Keep selection when indenting/outdenting.
vnoremap > >gv
vnoremap < <gv

" Open files where we left off
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" Disable Ex mode
" map Q <Nop>

:command Wq wq
:command WQ wq
:command W w
:command Q q

" FZF Mapppings
nnoremap <C-f>b :Buffers<CR>
nnoremap <C-f>a :Ag<CR>
nnoremap <C-f>c :Commands<CR>
nnoremap <C-s> :BLines<CR>
nnoremap / :BLines<CR>
nnoremap <C-p> :Files<CR>
nnoremap <leader>t :Files<CR>

" Disable K looking stuff up
map K <Nop>

" By default, vim thinks .md is Modula-2.
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

hi ColorColumn ctermbg=235
hi CursorLine cterm=bold ctermbg=235
hi CursorColumn ctermbg=235

" some settings for elm
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1

let g:elm_syntastic_show_warnings = 1
