" Init

" Load basic config files
runtime basic_config.vim

" --------------------------------------------------------------
" Modules
" --------------------------------------------------------------
" call modules#add('common')
" call modules#add('appearance')
" call modules#add('coc')
" call modules#add('coc_lists')
" call modules#add('git')
" call modules#add('explorer')
" call modules#add('workspace')
" call modules#add('motion')
" call modules#add('snippets')
" call modules#add('org')
" Language
" call modules#add('cpp')
" call modules#add('python')
" call modules#add('rust')
" call modules#add('latex')
" call modules#add('markdown')
" call modules#add('otherlang')
" call modules#add('pinyin')
" Load all added modules (i.e. install and config plugins)
" call modules#load_modules()
" call modules#appearance#config_after() " Set themes after installing plugins
"
" --------------------------------------------------------------
" Plugins
" --------------------------------------------------------------
" Activate the package manager
packadd minpac
call minpac#init()
" minpac must have {'type': 'opt'} so that it can be loaded with `packadd`.
call minpac#add('k-takata/minpac', {'type': 'opt'})

" Theme should go first, or other plugins' color change (e.g. highlight) will not work
runtime ./modules/theme.vim
runtime ./modules/editor.vim
runtime ./modules/git.vim
runtime ./modules/completion.vim
" Add other plugins here.
" Vim syntax highlighting
" call minpac#add('vim-jp/syntax-vim-ex')

" Debug if vim is slow or broken
" Check plugin performance
call minpac#add('dstein64/vim-startuptime')
" Debug coc
" let g:node_client_debug = 1

" keymappings for all
runtime keymappings.vim

" Load the plugins right now. (optional)
"packloadall

