let mapleader = ","
let g:mapleader = ","
set nocompatible              " be iMproved, required
filetype off                  " required
"
" enable / disable paste mode to prevent indent format during copying
  nnoremap <F1> :set invpaste paste?<CR>
  imap <F1> <C-O>:set invpaste paste?<CR>
  set pastetoggle=<F1>
" space to fold/unfold
  nnoremap <F6> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

  " let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'tpope/vim-fugitive.git'
  "  Plugin 'garbas/vim-snipmate'
    Plugin 'MarcWeber/vim-addon-mw-utils'
    Plugin 'tomtom/tlib_vim'
    Plugin 'tpope/vim-surround.git'
    Plugin 'tpope/vim-git.git'
  "  Plugin 'ervandew/supertab.git'
    Plugin 'fholgado/minibufexpl.vim'
    Plugin 'wincent/Command-T.git'
    Plugin 'mileszs/ack.vim.git'
    Plugin 'sjl/gundo.vim.git'
    Plugin 'alfredodeza/pytest.vim.git'
    Plugin 'reinh/vim-makegreen'
    Plugin 'vim-scripts/The-NERD-tree.git'
    Plugin 'bling/vim-airline'
    Plugin 'godlygeek/tabular'
    Plugin 'majutsushi/tagbar'
    Plugin 'hallison/vim-markdown'
    Plugin 'ap/vim-css-color'
    Plugin 'klen/python-mode'
    Plugin 'Valloric/YouCompleteMe'
    Plugin 'SirVer/ultisnips'
    Plugin 'honza/vim-snippets'

  call vundle#end()

" basic settings
    filetype on
    filetype plugin on
    filetype indent on
    syntax on
    set hlsearch
    set incsearch
    syntax enable
    set t_co=256
    set guioptions=ce
    set antialias
    set linespace=2
    set backspace=2                       " allow backspacing over everything in insert nc >kkmode
    set history=1000                      " keep 1000 lines of command line history
    set undolevels=100
    set ruler                             " show the cursor position all the time
    set autoread                          " auto read when file is changed from outside
    set wrap
    set linebreak
    set nolist
    set hidden
    set linespace=0
    set nocursorline
    set nofoldenable
    set number
    set numberwidth=4
    set title
    set showmode
    set nobomb                            " no BOM(Byte Order Mark)
    set nostartofline
    set laststatus=2
    set clipboard+=unnamed
    set splitright                        " always open vertical split window in the right side
    set nosplitbelow                        " always open horizontal split window below
    set scrolloff=5                       " start scrolling when n lines away from margins
    set switchbuf=useopen
    set wildmode=longest,list             " use emacs-style tab completion when selecting files, etc
    set wildmenu                          " make tab completion for files/buffers act like bash
    set key=			                        " disable encryption
    set synmaxcol=128
    set viminfo=			                    " disable .viminfo file
    set ttyfast                           " send more chars while redrawing
    set cmdheight=2
    set nobackup                          " no *~ backup files
    set noswapfile
    set nowritebackup
    set copyindent                        " copy the previous indentation on autoindenting
    set ignorecase                        " ignore case when searching
    set smartcase
    set smarttab                          " insert tabs on the start of a line according to
    set expandtab                         " replace <tab> with spaces
    set softtabstop=4
    set shiftwidth=4
    set tabstop=4
    set shortmess=i                       " remove splash wording
    set autochdir
    set mouse=a
    set foldmethod=indent

" file encoding
  set encoding=utf-8
  set fileencodings=ucs-bom,utf-8,big5,euc-jp,gbk,euc-kr,utf-bom,iso8859-1,euc-jp,utf-16le,latin1
  set fenc=utf-8 enc=utf-8 tenc=utf-8
  scriptencoding utf-8

" ignores
  set wildignore+=*.o,*.obj,*.pyc                " output objects
  set wildignore+=*.png,*.jpg,*.gif,*.ico        " image format
  set wildignore+=*.swf,*.fla                    " image format
  set wildignore+=*.mp3,*.mp4,*.avi,*.mkv        " media format
  set wildignore+=*.git*,*.hg*,*.svn*            " version control system
  set wildignore+=*sass-cache*
  set wildignore+=*.ds_store
  set wildignore+=log/**
  set wildignore+=tmp/**

" cursorline switched while focus is switched to another split window
  autocmd winenter * setlocal cursorline
  autocmd winleave * setlocal nocursorline

" remove tailing whitespace
  autocmd bufwritepre * :%s/\s\+$//e

" system env
  let g:iswindows = 0
  let g:islinux = 0
  let g:isgui = 0

  if has("gui_running")
    let g:isgui = 1
  else
    let g:isgui = 0
  endif

  if(has("win32") || has("win64") || has("win95") || has("win16"))
    let g:iswindows = 1
  else
    let g:islinux = 1
  endif

  if has('mac')
    let g:isMac = 1
  els
    let g:isMac = 0
  endif

if has("gui_running")
    set go=aAce              " 去掉难看的工具栏和滑动条
    set transparency=3      " 透明背景
    "set guifont=Monaco:h13   " 设置默认字体为monaco
    set guifont=CamingoCode:h13
    "set guifont=Tsentsiu\ Mono\ HT:h14
    "set guifont=Input:h13
    set showtabline=2        " 开启自带的tab栏
    "set columns=120          " 设置宽
    "set lines=40             " 设置长
    set cursorline           " 突出显示当前行
endif

" MAC specific settings
  try
    if (isgui)
      colorscheme obsidian3mod
    else
      colorscheme papercolor
    endif
  catch
  endtry

if has("gui_mac")
  "disable IM while leaving insert mode
  "autocmd InsertEnter * set noimdisable
  autocmd InsertLeave * set imdisable

  " move a line of text using ALT+[jk] or Comamnd+[jk] on mac
  nmap <D-j> mz:m+<cr>`z
  nmap <D-k> mz:m-2<cr>`z
  vmap <D-j> :m'>+<cr>`<my`>mzgv`yo`z
  vmap <D-k> :m'<-2<cr>`>my`<mzgv`yo`z

  " disable default menu hot key
  macmenu &File.New\ Window key=<nop>
  macmenu &File.Close key=<nop>

  " remap cmd + w to close tab
  map <D-w> :tabclose<CR>

  " remap cmd + n to new tab
  map <D-n> :tabnew<CR>

  " map cmd + enter to switch to full screen
  map <D-Enter> :set invfu<CR>

  " map cmd+1~9 to switch tab 1~9
  for i in range(1, 9)
    exec "nnoremap <D-".i."> ".i."gt"
  endfor
endif

" WINDOWS specific settings
if g:iswindows
    source $VIMRUNTIME/delmenu.vim
    source $VIMRUNTIME/menu.vim
    language messages zh_CN.utf-8
endif

if g:iswindows
    source $VIMRUNTIME/mswin.vim
    behave mswin
endif

" ======================================
"  custom key and plugin configurations
" ======================================
  " common shortkey for productivity
  " jj replace ESC in insertmode
    im jj <ESC>

  " Ctrl-j/k/h/l to switch between windows
    map <C-j> <C-W>j
    map <C-k> <C-W>k
    map <C-h> <C-W>h
    map <C-l> <C-W>l
    map <leader>w <C-W>q

  " Opens a new tab with the current buffer's path
  " Super useful when editing files in the same directory
    map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

  " focus into the MBE window
    map <leader>m :MBEFocus<cr>
  " Delete buffers but buffer with !
    map <leader>bd :MBEbd[!]

  " 格式化json数组
    map <C-F6> :%!python -m json.tool<CR>
  " time & date map
    nmap <leader>da "=strftime("%y/%m/%d")<cr>p"
    nmap <leader>ti "=strftime("%h:%m:%s")<cr>p"
  "insert a space line
    nmap <leader>n o<ESC>
    set ofu=syntaxcomplete#Complete

" Plugin settings
" airline
  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

  " unicode symbols
    let g:airline_left_sep = '»'
    let g:airline_left_sep = '▶'
    let g:airline_right_sep = '«'
    let g:airline_right_sep = '◀'
    let g:airline_symbols.crypt = '🔒'
    let g:airline_symbols.linenr = '␊'
    let g:airline_symbols.linenr = '␤'
    let g:airline_symbols.linenr = '¶'
    let g:airline_symbols.branch = '⎇'
    let g:airline_symbols.paste = 'ρ'
    let g:airline_symbols.paste = 'Þ'
    let g:airline_symbols.paste = '∥'
    let g:airline_symbols.whitespace = 'Ξ'

" ack
  let g:ackprg="ack -H --nocolor --nogroup --column"
  if executable("ack")
    noremap FF :Ack<SPACE>
    nmap <leader>s :Ack <C-R>=expand("<cword>")<CR><CR>
  else
    noremap FF :echo "Sorry, you need to install ack first!"<CR>
  endif

" tagbar
  if (isMac)
    let g:tagbar_ctags_bin='/usr/local/Cellar/ctags/5.8_1/bin/ctags'
  endif
  nmap <F4> :TagbarToggle<CR>

" minibufexpl
  let g:did_minibufexplorer_syntax_inits = 1
  hi MBENormal               ctermfg=grey guifg=#808080 guibg=bg
  hi MBEChanged              ctermfg=brown guifg=#CD5907 guibg=bg
  hi MBEVisibleNormal        ctermfg=blue guifg=#5DC2D6 guibg=bg
  hi MBEVisibleChanged       ctermfg=red  guifg=#F1266F guibg=bg
  hi MBEVisibleActiveNormal  ctermfg=green guifg=#A6DB29 guibg=bg
  hi MBEVisibleActiveChanged ctermfg=red guifg=#F1266F guibg=bg

" gundo
  nnoremap <leader>g :GundoToggle<CR>

" Nerdtree
  nnoremap <silent> <F3> :NERDTreeToggle<CR>
  let NERDTreeChDirMode=1
  let NERDTreeMouseMode=2
  " open directory of current opened file
  map <leader>r :NERDTreeFind<cr>

  " make nerdtree look nice
  let NERDTreeMinimalUI=1
  let NERDTreeDirArrows=1
  let g:NERDTreeWinSize=30

" pymode-settings
    let g:pymode_lint_checkers = ['pyflakes', 'pep8']
    let g:pymode_rope_goto_definition_bind = '<C-c>g'  " 快速寻找对象的定义处
    " disabled features, in order to make jedi-vim work properly
    "let g:pymode_doc = 0        " disable doc in pymode
    "let g:pymode_doc_bind = ''  " disable doc search key-binding in pymode
    let g:pymode_motion = 0     " disable pymode fast motion
    let g:pymode_run = 0        " disable runscript function
    let g:pymode_run_bind = ''
    let g:pymode_rope = 0       " disable rope components in pymode
    let g:pymode_rope_completion = 0 "disable rope completion
    let g:pymode_rope_complete_on_dot = 0

" ycm settings
    " 自定义ycm的代码跳转功能
    nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
    nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
    nnoremap <leader>gg :YcmCompleter GoTo<CR>
    " 离开插入模式后自动关闭preview 窗口
    let g:ycm_autoclose_preview_window_after_completion=1
    let g:ycm_autoclose_preview_window_after_insertion=1
    let g:ycm_complete_in_comments=1

" ultisnips
    " 解决和ycm的补全快捷键冲突问题
    let g:UltiSnipsExpandTrigger       = "<c-tab>"
    let g:UltiSnipsJumpForwardTrigger  = "<tab>"
    let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
    " If you want :UltiSnipsEdit to split your window.
    let g:UltiSnipsEditSplit="vertical"
    " Enable tabbing through list of results
    function! g:UltiSnips_Complete()
        call UltiSnips#ExpandSnippet()
        if g:ulti_expand_res == 0
            if pumvisible()
                return "\<C-n>"
            else
                call UltiSnips#JumpForwards()
                if g:ulti_jump_forwards_res == 0
                   return "\<TAB>"
                endif
            endif
        endif
        return ""
    endfunction

    au InsertEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"

    " Expand snippet or return
    let g:ulti_expand_res = 0
    function! Ulti_ExpandOrEnter()
        call UltiSnips#ExpandSnippet()
        if g:ulti_expand_res
            return ''
        else
            return "\<return>"
    endfunction

    " Set <space> as primary trigger
    inoremap <return> <C-R>=Ulti_ExpandOrEnter()<CR>

" helper function
  set csprg=/usr/local/bin/cscope
  function! Do_CsTag()
      if(executable("cscope") && has("cscope") )
          if(has('win32'))
              silent! execute "!dir /b /s *.c,*.cpp,*.h,*.java,*.cs,*.php,*.py >> cscope.files"
          else
              silent! execute "!find . -name '*.h' -o -name '*.c' -o -name '*.cpp' -o -name '*.m' -o -name '*.mm' -o -name '*.java' -o -name '*.py' -o -name '*.php' > cscope.files"
          endif
          silent! execute "!cscope -b"
          if filereadable("cscope.out")
              execute "cs add cscope.out"
          elseif $CSCOPE_DB != ""
              cs add $CSCOPE_DB
          endif
      endif
  endf

if(executable("cscope") && has("cscope"))
    set cscopetag
    set csto=0
    set cscopeverbose
    map <leader>CS :call Do_CsTag()<cr>
    nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
endif
" function for edit ~/_vimrc in new tab
function! SwitchToBuf(filename)
    let bufwinnr = bufwinnr(a:filename)
    if bufwinnr != -1
        exec bufwinnr . "wincmd w"
        return
    else
        tabfirst
        let tab = 1
        while tab <= tabpagenr("$")
            let bufwinnr = bufwinnr(a:filename)
            if bufwinnr != -1
                exec "normal " . tab . "gt"
                exec bufwinnr . "wincmd w"
                return
            endif
            tabnext
            let tab = tab + 1
        endwhile
        " not exist, new tab
        exec "tabnew " . a:filename
    endif
endfunction

" fast edit vimrc file
if g:islinux || g:isMac
    map <silent> <leader>ss :source ~/.vimrc<cr>
    map <silent> <leader>ee :call SwitchToBuf("~/.vimrc")<cr>
    autocmd! bufwritepost .vimrc source ~/.vimrc
elseif g:iswindows
    map <silent> <leader>ss :source ~/_vimrc<cr>
    map <silent> <leader>ee :call SwitchToBuf("~/_vimrc")<cr>
    autocmd! bufwritepost _vimrc source ~/_vimrc
endif

function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("Ack \"" . l:pattern . "\" " )
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction
" 根据不同文件类型设定缩进
  au FileType h,c,cc,cpp,sh,perl,python :call YWcode()
  fu! YWcode()
  	se ai si
  	se sw=4 ts=4 sts=4
  endf

" toggle between working mode and presentation mode
" borrowed from skalnik(https://github.com/skalnik)
"
" font size change only work for GUI-version Vim
  function! PresentationModeOn()
    colorscheme github
    set background=light

    if has("gui_macvim")
      set guifont=Monaco:h25           " for Mac
    elseif has("gui_gtk")
      set guifont=Monospace\ 22        " for ubuntu
    end
  endfunction

  function! PresentationModeOff()
    set background=dark
    colorscheme jellybeans

    if has("gui_macvim")
      set guifont=Monaco:h14           " for Mac
    elseif has("gui_gtk")
      set guifont=Monospace\ 14        " for ubuntu
    end
  endfunction

  function! TogglePresentationMode()
    if !exists('w:present')
      let w:present=0
    endif

    if w:present==0
      call PresentationModeOn()
      let w:present=1
    else
      call PresentationModeOff()
      let w:present=0
    endif
  endfunction

  map <leader>z :call TogglePresentationMode()<CR>

" QuickFix Window, which is borrowed from c9s
  command! -bang -nargs=? QFix call QFixToggle(<bang>0)

  function! QFixToggle(forced)
    if exists("g:qfix_win") && a:forced == 0
      cclose
      unlet  g:qfix_win
    else
      copen 10
      let  g:qfix_win=bufnr("$")
    endif
  endfunction

  nnoremap <leader>q :QFix<CR>

  autocmd BufWinEnter quickfix let g:qfix_win = bufnr("$")

" split window resize
  if bufwinnr(1)
    map <silent><LEADER>9 :resize -20<CR>
    map <silent><LEADER>0 :resize +20<CR>
    map <silent><LEADER>= :vertical resize +20<CR>
    map <silent><LEADER>- :vertical resize -20<CR>
  endif
