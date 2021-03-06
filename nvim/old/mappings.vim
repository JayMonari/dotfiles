nnoremap <Leader><Leader>s :source ~/.config/nvim/init.vim<CR>

let mapleader = " "
" -- GOD TIER --
nnoremap <Leader>d <C-d>
nnoremap <Leader>u <C-u>
xnoremap <silent> . :normal .<CR>
xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>
function! ExecuteMacroOverVisualRange()
    echo "@".getcmdline()
    execute ":'<,'>normal @" . nr2char(getchar())
endfunction
inoremap jj <Esc>l
nnoremap Y y$
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
" == AUTO-COMPLETE ==
" Parens
inoremap ( ()<Left>
inoremap (<CR> (<CR>)<C-o>O
inoremap <silent>) <C-r>=Skip_closing(')')<CR>
" Brackets
inoremap [ []<Left>
inoremap [<CR> [<CR>]<C-o>O
inoremap <silent>] <C-r>=Skip_closing(']')<CR>
" Squirrely Braces
inoremap { {}<Left>
inoremap {<CR> {<CR>}<C-o>O
inoremap <silent>} <C-r>=Skip_closing('}')<CR>
inoremap " <C-r>=Skip_closing('"')<CR>
inoremap ' <C-r>=Skip_closing("'")<CR>
inoremap ` <C-r>=Skip_closing("`")<CR>
" -- INSERT --
inoremap \\ <C-o>
" -- NORMAL --
nnoremap <Leader>ra :%s/\<\(<C-r><C-w>\)\>/
nnoremap U <C-r>
nnoremap <Leader>v <C-v>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>e :Lex<CR>
nnoremap <Leader>q :copen<CR>
nnoremap [ :cprev<CR>
nnoremap <Leader>] :cnext<CR>
nnoremap <Leader>/ :noh<CR>
nnoremap <Leader><CR> :7sp<CR>:term<CR>i
" -- VISUAL --
vnoremap _ "_dP
vnoremap // y/\V<C-r>=escape(@", '/\')<CR><CR>
vnoremap ra y:%s/\(<C-r>=escape(@", '/\')<CR>\)/
" Sorting
vnoremap <Leader>s :'<,'>!sort -f<CR>
" Remove trailing whitespaces
nnoremap <silent> <Leader>rs :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s
                             \ <Bar> :nohl <Bar> :unlet _s <CR>
" -- TERMINAL --
tnoremap \\ <C-\><C-n>
tnoremap \2 <C-\><C-n>:res2<CR>:wincmd k<CR>
tnoremap \c <C-c>
" -- GLOBAL --
"  Yank & Pull
vnoremap <Leader>y "+y
nnoremap <Leader>+ "+P
nnoremap <Leader>Y gg"+yG
" Make what you will
nnoremap <Leader>m :let &makeprg=""<Left>
nnoremap <Leader>c :cclose<CR>:silent !clear<CR>:make<CR>
" -- WINDOWS --
" or <C-W> o
nnoremap <Leader>ww :only<CR>
nnoremap <Leader>gs <C-^>
nnoremap <Leader>o <C-O>
nnoremap <Leader>i <C-I>
nnoremap <Leader>h :wincmd h<CR>
nnoremap <Leader>j :wincmd j<CR>
nnoremap <Leader>k :wincmd k<CR>
nnoremap <Leader>l :wincmd l<CR>
nnoremap <Leader>\ :vsp<CR>
" -- PLUGINS --
" FZF
nnoremap <Leader>p :Files<CR>
" Prettier
nnoremap <Leader>gq :Format<CR>:silent OR<CR>

" -- ALIASES --
iabbrev pln fmt.Println("")<Left><Left><C-r>=Eatchar('\s')<CR>
iabbrev pf fmt.Printf("")<Left><Left><C-r>=Eatchar('\s')<CR>
iabbrev clg console.log()<Left><C-r>=Eatchar('\s')<CR>
