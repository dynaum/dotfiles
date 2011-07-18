source ~/.vim/vimrc

set mouse=a
set ttymouse=xterm2
set nowrap
set nu
set sts=2
set sw=2
set guifont=monaco
colorscheme busybee

ab rdb require 'ruby-debug';debugger

nmap <silent> <C-t> :CommandT<Enter>
nmap <C-h> i$<Esc>f(r f)xF$x
nmap <silent> <F2> :BufExplorer<Enter>
nmap <silent> <F3> :noh<Enter>
nmap <silent> <F4> gg=G''
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
nmap <silent> <F6> :set lines=999 columns=999<Enter>
let mapleader = ","

augroup filetypedetect
  autocmd BufRead,BufNewFile *.prawn set filetype=ruby
augroup END

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

"turn off needless toolbar on gvim/mvim
set guioptions+=TLlRrb
set guioptions-=TLlRrb
set guioptions-=m

"leader-t configuration
let g:CommandTMaxHeight=15
let g:CommandTMatchWindowAtTop=1

"jump to last cursor position when opening a file
"dont do it when writing a commit log entry
autocmd BufReadPost * call SetCursorPosition()
function! SetCursorPosition()
  if &filetype !~ 'commit\c'
    if line("'\"") > 0 && line("'\"") <= line("$")
      exe "normal! g`\""
      normal! zz
    endif
  end
endfunction

"define :HighlightLongLines command to highlight the offending parts of
"lines that are longer than the specified length (defaulting to 80)
command! -nargs=? HighlightLongLines call s:HighlightLongLines('<args>')
function! s:HighlightLongLines(width)
  let targetWidth = a:width != '' ? a:width : 79
  if targetWidth > 0
    exec 'match Todo /\%>' . (targetWidth) . 'v/'
  else

  endfunction

  " == KEYBINDINGS ===================================================
  "key mapping for vimgrep result navigation

  " Tab mappings.
  map <leader>te :tabedit
  map <leader>tc :tabclose<cr>
  map <leader>to :tabonly<cr>
  map <leader>tn :tabnext<cr>
  map <leader>tp :tabprevious<cr>
  map <leader>tf :tabfirst<cr>
  map <leader>tl :tablast<cr>
  map <leader>tm :tabmove

  " As seen on Vimcasts, expand path for the current file
  map <leader>ew :e <C-R>=expand("%:p:h") . "/" <CR>
  map <leader>es :sp <C-R>=expand("%:p:h") . "/" <CR>
  map <leader>ev :vsp <C-R>=expand("%:p:h") . "/" <CR>
  map <leader>et :tabe <C-R>=expand("%:p:h") . "/" <CR>

  nnoremap <C-j> 5j
  nnoremap <C-k> 5k

  nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

  nnoremap <leader>c :bd<CR>
  nnoremap <leader>ft Vatzf
  nnoremap <leader>S ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:let @/=''<CR>
  nnoremap <leader>q gqip
  nnoremap <leader>v V`]
  nnoremap <leader>l :nohlsearch<CR>
  inoremap jj <ESC>

  imap <C-l> <Space>=><Space>

  " Edit my .vimrc on new tab
  nmap <leader>v :tabedit $MYVIMRC<CR>

  " Reload the vimrc file after saving it
  if has("autocmd")

    " save on lost focus
    au FocusLost * :wa

    autocmd bufwritepost .vimrc source $MYVIMRC
    " Default settings
    set ts=2 sts=2 sw=2 expandtab
    " Styles depending on file type
    autocmd FileType ruby setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab
    autocmd FileType javascript setlocal ts=4 sts=4 sw=4 expandtab
    autocmd FileType python map <buffer> <F3> :call Pep8()<CR>


    " Treat different file types as one we know. Example:
    " autocmd BufNewFile,BufRead *.rss,*.atom setfiletype xml

    " Automatically remove whitespaces while saving files
    autocmd BufWritePre *.snippet,*.yml,*.rb,*.html,*.css,*.erb,*.haml :call <SID>StripTrailingWhitespaces()
    autocmd BufRead,BufNewFile *.scss set filetype=scss

  endif

  " As seen on Vimcasts
  nnoremap <silent> <F5> :call <SID>StripTrailingWhitespaces()<CR>
  function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business
    %s/\s\+$//e
    " Clean up: restore previous search history and cursor position
    let @/=_s
    call cursor(l,c)
  endfunction
