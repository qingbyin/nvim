" Theme

" Fix color in the terminal
" May also need "export TERM=xterm-256color" in the terminal
if !has('gui_running')
  set t_Co=256
endif
" Use highlight-guif
" uses the colorscheme and *.vim's guibg/guifg values
" to set the color highlighting rather than the cterm* values 
set termguicolors

" Globally enable syntax highlighting
syntax enable

" some of the code to be bolded, like functions and language controls
let g:enable_bold_font = 1


" colorscheme
call minpac#add('kristijanhusak/vim-hybrid-material')
call minpac#add('arcticicestudio/nord-vim')
set background=dark
colorscheme hybrid_material
" Turn off Vim background, in order to use terminal GUI's background.
highlight Normal guibg=NONE ctermbg=NONE
highlight NonText guibg=NONE ctermbg=NONE


" Status line theme (Note install a font that supports powerline icons)
call minpac#add('itchyny/lightline.vim')
" Always enable modeline/tabline
set laststatus=2
set showtabline=2
" Hide the mode info, e.g. -- NORM --
set noshowmode
" Show pressed keys on the right bottom
set showcmd
" Config the bottom modeline and the top tabline
let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
      \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" },
      \ 'tabline': {
      \   'left': [ ['tabs'] ],
      \   'right': [ ['modified'] ]
      \ },
      \ 'component_type': {
      \   'tabs': 'filename'
      \ }
      \ }
