" Autocompletion and lsp support
call minpac#add('neoclide/coc.nvim', {'branch': 'release'})

" Config coc
" TextEdit might fail if hidden is not set.
set hidden
" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup
" Give more space for displaying messages.
set cmdheight=2
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')
highlight CocHighlightText  guibg=#646470 ctermbg=223

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" -------------------------------------------------------------------
"  Key mappings
" -------------------------------------------------------------------
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gf <Plug>(coc-declaration)
nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Show outline in tree view
nnoremap go :CocOutline<CR>
" Find symbol of current document.
nnoremap <silent><nowait> <Leader>o  :<C-u>CocList outline<cr>
" Mouse hover
nnoremap <silent> gh :call CocActionAsync('doHover')<CR>
" Diagnostics (similar to VS Code problem windows)
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
" Show all diagnostics.
nnoremap <silent><nowait> ga  :<C-u>CocList diagnostics<cr>

" Symbol renaming.
nmap <F2> <Plug>(coc-rename)

" Toggle fix suggestions for a word (used to fix spell error, code error...)
nmap <C-space> <Plug>(coc-codeaction-selected)w

" Remap <C-b> and <C-f> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Search files from current cwd
" List opened files (i.e. buffers)
nmap <C-p> :CocList buffers<CR>
" Mimic quick open key in VS Code
nmap <M-p> :CocList files<CR>

" Find word in current buffer
nmap <silent> <space>f :CocList words<CR>
" Find current word in current buffer (and enter normal mode in the list)
nmap <silent> <space>w :exe 'CocList -I --normal --input='.expand('<cword>').' words'<CR>
" Find in current cwd
nmap <silent> <space>F :CocList grep<CR>

" Show all commands (Similar to ctrl+shift+p in VS Code)
nnoremap <silent><nowait> <space>x  :<C-u>CocList commands<cr>



