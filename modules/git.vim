" Mimic emacs magit
call minpac#add('jreybert/vimagit')
nmap <Leader>M :MagitOnly<cr>
let g:magit_refresh_gitgutter = 1

" Show git differ on the gutter
call minpac#add('airblade/vim-gitgutter')
" Set SignColumn background color (same as the lineNumber bg color)
highlight! link SignColumn LineNr
" Modify sign background color
highlight GitGutterAdd ctermfg=193 ctermbg=65 guifg=#d7ffaf guibg=#5F875F
highlight GitGutterChange ctermfg=189 ctermbg=60 guifg=#d7d7ff guibg=#5F5F87
highlight GitGutterDelete ctermfg=234 ctermbg=167 guifg=#263238 guibg=#cc6666
" Use floating/popup windows for hunk/chunk previews
let g:gitgutter_preview_win_floating = 1
" keymappings
" Disable its default
let g:gitgutter_map_keys = 0
" hunk info 
nmap <leader>gd <Plug>(GitGutterPreviewHunk)
" Stage hunk
nmap gs <Plug>(GitGutterStageHunk)
" Jump to previous/next hunk/chunk
nmap gh <Plug>(GitGutterPrevHunk)
nmap gj <Plug>(GitGutterNextHunk)
