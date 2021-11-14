function! modules#latex#plugins() abort
    let plugins = []
    " Only use vimtex in the UltiSnips (to check math mode)
    " Use coc-texlab to build and view pdf
    call add(plugins, ['lervag/vimtex', {'merged' : 0, 'on_ft': ['bib', 'tex']}])
    call add(plugins, ['KeitaNakamura/tex-conceal.vim', {'for': 'tex'}])
    call add(g:coc_global_extensions, 'coc-texlab')
    return plugins
endfunction

function! modules#latex#config() abort
    autocmd FileType tex let b:coc_pairs = [["$", "$"]]

    let g:tex_flavor = 'latex'
    " Setting for sumatraPDF
    " let g:vimtex_view_general_viewer = 'sumatraPDF'
    " let g:vimtex_view_general_options = '-reuse-instance @pdf'
    " let g:vimtex_view_general_options_latexmk = '-reuse-instance'
    
    " Setting for zathura
    " Remark: configure neovim backforward search using neovim-remote (see vimtex help)
    " let g:vimtex_view_method='zathura'

    " suppress the warning
    " let g:vimtex_quickfix_ignore_filters = ['while executing']

    " Convert unfocused LaTex math code into real symbols
    autocmd filetype tex set conceallevel=2
    let g:tex_conceal='abdmg'

    " Fix the motion lag caused by math pairs:
    " See :h vimtex-nf-enhanced-matchparen
    " let g:vimtex_matchparen_enabled = 0
    let g:matchup_override_vimtex = 1

    let g:vimtex_mappings_enabled=0
    call s:mappings()
endfunction

function! s:mappings() abort
    autocmd filetype tex imap <F5> :CocCommand latex.Build<CR>
    autocmd filetype tex nmap <F5> :CocCommand latex.Build<CR>
    autocmd filetype tex nmap <Space>v :CocCommand latex.ForwardSearch<CR>
endfunction
