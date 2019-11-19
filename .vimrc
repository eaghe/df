set nocompatible
packadd minpac
call minpac#init()
call minpac#add('vim-jp/vim-cpp')
call minpac#add('pboettch/vim-cmake-syntax')
call minpac#add('kchmck/vim-coffee-script')
call minpac#add('tpope/vim-cucumber')
call minpac#add('ekalinin/Dockerfile.vim')
call minpac#add('elixir-editors/vim-elixir')
call minpac#add('tpope/vim-git')
call minpac#add('fatih/vim-go')
call minpac#add('tfnico/vim-gradle')
call minpac#add('jparise/vim-graphql')
call minpac#add('sheerun/vim-haml')
call minpac#add('CH-DanReif/haproxy.vim')
call minpac#add('neovimhaskell/haskell-vim')
call minpac#add('othree/html5.vim')
call minpac#add('elzr/vim-json')
call minpac#add('pangloss/vim-javascript')
call minpac#add('skammer/vim-css-color')
call minpac#add('tbastos/vim-lua')
call minpac#add('chr4/nginx.vim')
call minpac#add('lifepillar/pgsql.vim')
call minpac#add('sheerun/rspec.vim')
call minpac#add('vim-ruby/vim-ruby')
call minpac#add('cakebaker/scss-syntax.vim')
call minpac#add('slim-template/vim-slim')
call minpac#add('amadeus/vim-xml')
call minpac#add('vim-scripts/svg.vim')
call minpac#add('wgwoods/vim-systemd-syntax')
call minpac#add('hashivim/vim-terraform')
call minpac#add('ericpruitt/tmux.vim')
call minpac#add('HerringtonDarkholme/yats.vim')
call minpac#add('posva/vim-vue')
call minpac#add('stephpy/vim-yaml')
call minpac#add('yuezk/vim-js')
call minpac#add('maxmellon/vim-jsx-pretty')

call minpac#add('w0rp/ale')
call minpac#add('honza/vim-snippets')
call minpac#add('tpope/vim-bundler')
call minpac#add('tpope/vim-rails')
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-commentary')
call minpac#add('janko-m/vim-test')
call minpac#add('janko/vim-test')
call minpac#add('ryanoasis/vim-devicons')
call minpac#add('scrooloose/nerdtree')
call minpac#add('tpope/vim-fugitive')
call minpac#add('mhinz/vim-grepper')
call minpac#add('junegunn/fzf')
call minpac#add('junegunn/fzf.vim')
call minpac#add('tpope/vim-projectionist')
call minpac#add('tpope/vim-dispatch')
call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('mattn/emmet-vim')
call minpac#add('tpope/vim-dispatch')
call minpac#add('christoomey/vim-tmux-navigator')
call minpac#add('morhetz/gruvbox')
call minpac#add('neoclide/coc.nvim', {'do': 'call coc#util#install()'})
" call minpac#add('jiangmiao/auto-pairs')
" call minpac#add('cohama/lexima.vim')



" minpac {{{
command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()
" }}}

" FZF {{{
nnoremap <C-p> :<C-u>FZF<CR>
" }}}

filetype plugin indent on
syntax on

" GIT {{{
map <F9> <Esc>:Gblame<CR>
" }}}

map <F5> <Esc>:Filetypes<CR>

" ALE {{{

" For JS files, use `eslint` (and only eslint)
let g:ale_fixers = {'ruby': ['rubocop'], 'javascript': ['eslint']}
let g:ale_linters = {'javascript': ['eslint'] }
let g:ale_fix_on_save = 1
" Mappings in the style of unimpaired-next
nmap <silent> [W <Plug>(ale_first)
nmap <silent> [w <Plug>(ale_previous)
nmap <silent> ]w <Plug>(ale_next)
nmap <silent> ]W <Plug>(ale_last)

let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
" }}}

" VIM-GREPPER {{{
let g:grepper = {}
let g:grepper.tools = ['rg', 'git', 'grep']

" Search for the current word
nnoremap <C-g> :Grepper -cword -noprompt<CR>

" Search for the current selection
nmap gs <Plug>(GrepperOperator)
xmap gs <Plug>(GrepperOperator)

nnoremap ,f :Grepper -tool rg -grepprg rg --column --line-number -H --vimgrep<CR>
nnoremap ,z :Grepper-highlight -buffer -tool rg -grepprg rg --column --line-number -H -i --vimgrep<CR>
nnoremap <C-f> :Rg<CR>
" }}}

" VIM-TEST {{{
let test#strategy = "dispatch"
"}}}

" NAVIGATION {{{
map ,m <ESC>:NERDTreeFind<CR>
map ,n <ESC>:NERDTreeToggle<CR>
map ,, <ESC>:noh<CR>
"map ,a <ESC>:buffers<CR>:buffer<Space>
map ,a <ESC>:Buffers<CR>
let NERDTreeIgnore = ['\~$', 'tmp[[dir]]', 'node_modules[[dir]]', 'tags[[file]]', '.DS_STORE[[dir]]', 'BGAppTest[[dir]]', 'codesign[[dir]]', 'jenkins-build[[dir]]', 'nexus-links[[dir]]', 'tools[[dir]]']

nnoremap <silent> <C-l> <C-w>l
nnoremap <silent> <C-h> <C-w>h
nnoremap <silent> <C-k> <C-w>k
nnoremap <silent> <C-j> <C-w>j
" }}}

" INDENT {{{
nnoremap <F7> mzgg=G`z
" }}}

" ELITE MODE {{{
let g:elite_mode = 1
" }}}

" SETTINGS {{{
set fileformat=unix
set nobackup
set nowritebackup
set noswapfile
set history=100
set ruler
set showcmd
set incsearch
set smartcase
set hlsearch
set ignorecase
set hidden
set nowrap
set backspace=indent,eol,start
set expandtab
set tabstop=2
set shiftwidth=2
set list listchars=tab:\ \ ,trail:·
set timeout timeoutlen=1000 ttimeoutlen=100
set laststatus=2
set statusline=%f\ %=L:%l/%L\ %c\ (%p%%)
set guioptions-=T
set encoding=utf-8
set autoread
set clipboard=unnamed
set shortmess+=I
set splitbelow
set splitright
set wildmenu
set lazyredraw
set relativenumber
set showmatch
set scrolloff=5
set sidescrolloff=7
set sidescroll=1
set undofile
set undodir=~/.vim/undo
" }}}

" AUGROUP {{{
augroup vimrc
  autocmd!
  autocmd BufWritePre /tmp/* setlocal noundofile
augroup END
" }}}

" MAPPINGS {{{
function! EliteKey()
  nnoremap <Up>     :resize -2<CR>
  nnoremap <Down>   :resize +2<CR>
  nnoremap <Left>   :vertical resize +3<CR>
  nnoremap <Right>  :vertical resize -3<CR>
endfunction

if get(g:, 'elite_mode')
  :call EliteKey()
endif

nnoremap <F10> :call ToggleEliteMode()<CR>

function! ToggleEliteMode()
  if g:elite_mode == 1
    let g:elite_mode = 0
    :silent! nunmap <Up>
    :silent! nunmap <Down>
    :silent! nunmap <Left>
    :silent! nunmap <Right>
    echo "Elite Mode off"
  else
    let g:elite_mode = 1
    :call EliteKey()
    echo "Elite Mode on"
  endif
endfunction

tnoremap <Esc> <C-\><C-n>
tnoremap <C-v><Esc> <Esc>
nnoremap <F4> :terminal<CR>
nnoremap <F11> :tab sp<CR>
nnoremap <F12> :copen<CR>

cmap w!! %!sudo tee > /dev/null %
map <Leader>. :Sexplore<CR>
map <Leader>yt :ls<CR>
map <Leader>yd :bufdo bd<CR>

"Make splitting windows easier
map <Leader>; <C-w>s
map <Leader>` <C-w>v

nnoremap ,q :bdelete<CR>
nnoremap ,w :update<CR>
nnoremap ,t gt
" }}}

" Commands {{{
" jump to last cursor
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif

fun! StripTrailingWhitespace()
  " don't strip on these filetypes
  if &ft =~ 'markdown'
    return
  endif
  %s/\s\+$//e
endfun
autocmd BufWritePre * call StripTrailingWhitespace()

" file formats
autocmd Filetype gitcommit setlocal spell textwidth=72
autocmd Filetype markdown setlocal wrap linebreak nolist textwidth=0 wrapmargin=0 " http://vim.wikia.com/wiki/Word_wrap_without_line_breaks
autocmd FileType sh,cucumber,ruby,yaml,zsh,vim,js,javascript,javascript.jsx,jsx setlocal shiftwidth=2 tabstop=2 expandtab

" specify syntax highlighting for specific files
autocmd Bufread,BufNewFile *.spv set filetype=php
autocmd Bufread,BufNewFile *.md set filetype=markdown " Vim interprets .md as 'modula2' otherwise, see :set filetype?

" Create a 'scratch buffer' which is a temporary buffer Vim wont ask to save
" http://vim.wikia.com/wiki/Display_output_of_shell_commands_in_new_window
command! -complete=shellcmd -nargs=+ Shell call s:RunShellCommand(<q-args>)
function! s:RunShellCommand(cmdline)
  echo a:cmdline
  let expanded_cmdline = a:cmdline
  for part in split(a:cmdline, ' ')
    if part[0] =~ '\v[%#<]'
      let expanded_part = fnameescape(expand(part))
      let expanded_cmdline = substitute(expanded_cmdline, part, expanded_part, '')
    endif
  endfor
  botright new
  setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap
  call setline(1, 'You entered:    ' . a:cmdline)
  call setline(2, 'Expanded Form:  ' .expanded_cmdline)
  call setline(3,substitute(getline(2),'.','=','g'))
  execute '$read !'. expanded_cmdline
  setlocal nomodifiable
  1
endfunction

" autocmd BufRead * setlocal foldmethod=marker
" Close all folds when opening a new buffer
" autocmd BufRead * normal zM

" Reset spelling colours when reading a new buffer
" This works around an issue where the colorscheme is changed by .local.vimrc
fun! SetSpellingColors()
  highlight SpellBad cterm=bold ctermfg=white ctermbg=red
  highlight SpellCap cterm=bold ctermfg=red ctermbg=white
endfun
autocmd BufWinEnter * call SetSpellingColors()
autocmd BufNewFile * call SetSpellingColors()
autocmd BufRead * call SetSpellingColors()
autocmd InsertEnter * call SetSpellingColors()
autocmd InsertLeave * call SetSpellingColors()

" Change colourscheme when diffing
fun! SetDiffColors()
  highlight DiffAdd    cterm=bold ctermfg=white ctermbg=DarkGreen
  highlight DiffDelete cterm=bold ctermfg=white ctermbg=DarkGrey
  highlight DiffChange cterm=bold ctermfg=white ctermbg=DarkBlue
  highlight DiffText   cterm=bold ctermfg=white ctermbg=DarkRed
endfun
autocmd FilterWritePre * call SetDiffColors()

command! -bang -nargs=* Rg call fzf#vim#grep( 'rg --column --line-number --no-heading --color=never '.shellescape(<q-args>), 1, <bang>0 ? fzf#vim#with_preview('up:60%') : fzf#vim#with_preview('right:50%:hidden', '?'), <bang>0)
" }}}

nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

set shell=/usr/bin/zsh
" if hidden is not set, TextEdit might fail.
set hidden

" Better display for messages
set cmdheight=2

" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : <SID>check_back_space() ? "\<TAB>" : coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> for trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> for confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` for navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
vmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Use `:Format` for format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` for fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)


" Add diagnostic info for https://github.com/itchyny/lightline.vim
let g:lightline = { 'colorscheme': 'wombat', 'active': { 'left': [ [ 'mode', 'paste' ], [ 'cocstatus', 'readonly', 'filename', 'modified' ] ] }, 'component_function': { 'cocstatus': 'coc#status' }, }

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

nmap <F8> <Plug>(ale_fix)
set fillchars+=vert:\.
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>
set background=dark
let g:airline_theme='gruvbox'
colorscheme gruvbox

let g:jsx_ext_required = 0
