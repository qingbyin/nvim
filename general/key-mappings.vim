" Basic key mappings

" Map <space> to <leader>
let mapleader ="\<Space>"
let maplocalleader = "\\"

" Move in command mode
cnoremap <c-h> <left>
cnoremap <c-j> <down>
cnoremap <c-k> <up>
cnoremap <c-l> <right>

inoremap <c-j> <nop>

" Tab to move to next/previous buffer
nnoremap <silent> <TAB> :bnext<CR>
nnoremap <silent> <S-TAB> :bprevious<CR>

" Alternate way to save
nnoremap <silent> <C-s> :w<CR>
" Alternate way to quit
nnoremap <silent> <C-q> :wq!<CR>
" vim-bbye (Save and Kill a buffer)
nnoremap <silent>  <Leader>q :Bdelete<CR>

" use alt + hjkl to resize windows
nnoremap <silent> <M-j> :resize -2<CR>
nnoremap <silent> <M-k> :resize +2<CR>
nnoremap <silent> <M-h> :vertical resize -2<CR>
nnoremap <silent> <M-l> :vertical resize +2<CR>

" Switch windows
nmap <C-l> <C-w>l
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k

" Disable build-in help key F1
nmap <F1> <nop>
imap <F1> <nop>

" copy to the system clipboard
nnoremap <silent> <leader>yy "+yy
vnoremap <silent> <leader>y "+y



