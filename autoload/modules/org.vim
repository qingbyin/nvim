function! modules#org#plugins() abort
    let plugins = []
    call add(plugins, ['nvim-orgmode/orgmode'])
    call add(plugins, ['nvim-neorg/neorg'])
    call add(plugins, ['nvim-lua/plenary.nvim'])
    return plugins
endfunction

function! modules#org#config() abort
    
    call s:mappings()
endfunction

function! s:mappings() abort
endfunction
