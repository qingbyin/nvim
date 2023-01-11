" Mimic emacs magit
" call minpac#add('jreybert/vimagit')
" nmap <Leader>M :MagitOnly<cr>
" let g:magit_refresh_gitgutter = 1

" Show git differ on the gutter
call minpac#add('lewis6991/gitsigns.nvim')
lua require('gitsigns-config')
" Set SignColumn background color (same as the lineNumber bg color)
highlight! link SignColumn LineNr

" keymappings
" Disable its default
" hunk info 
nmap <space>gp :Gitsigns preview_hunk<CR>
nmap <space>gd :Gitsigns toggle_deleted<CR>
nmap <space>gu :Gitsigns undo_stage_hunk<CR>
" Stage hunk
nmap gs :Gitsigns stage_hunk<CR>
" Jump to previous/next hunk
nmap gj :Gitsigns prev_hunk<CR>
nmap gk :Gitsigns next_hunk<CR>
