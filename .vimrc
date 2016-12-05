set nocompatible 
syntax enable "colours
filetype plugin on "be clever about file types
set path+=** "path for fuzzy finding
set wildignore+=**/node_modules/**
set wildmenu "proper menu when multiple matches
set ts=4 "tab size
set shiftwidth=4
set relativenumber "relativenumbers
set directory=/root/.vim/swapfiles// "move .swp files

"swaps panes for netrw
let g:netrw_altv=1	"vertical
let g:netrw_alto=1	"horizontal

"swap panes for spit
set splitbelow
set splitright

"snippets
source /root/.apigeerc

au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null

"VIM Cheatsheet
"==========
" d = delete
" c = change
" > = indent
" v = visual
" y = yank
" ~ = change case
"
" w = word
" b = back
" e = end of word
" 
" iw = inner word
" it = inner tag
" i" = inner quotes
" ip = inner paragraph
" as = a sentence
"
" f = find (F for backwards)
" t = (find) to (T for backwards)
" / = search
"
" . = repeat
"
" :find = open file/folder (works with *'s)
" :ls / :b (filename) buffer mgmt
" sf = find + split
"
" Use below to create ctags 
" ctags -R . \
" ^] = jump to tag
" g^] = gloabl jump to tag
" ^t = back a tag
"
" ^x^n = autocomplete from this file
" ^n = global autocomplete (^p for reverse)
" ^x^f = filename autocomplete
" ^x^o = tag autocomplete

" Tag completion
" Ctl-X Ctl-O

"netrw
" create file %
" delete file D
" create directory d
