" Editor plugins

" Easy to add/delete/change pairs
call minpac#add('tpope/vim-surround')
" Cooporated with surround.vim, so that ds, cs, yss can be repeated
call minpac#add('tpope/vim-repeat')

" Comment using <gcc>
call minpac#add('tpope/vim-commentary')

" Easy motion
call minpac#add('justinmk/vim-sneak')
let g:sneak#label = 1

" Smooth scroll
call minpac#add('psliwka/vim-smoothie')
call minpac#add('rhysd/accelerated-jk')
nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)

" Start screen (greeter)
call minpac#add('goolord/alpha-nvim')

" Delete buffers (close files) without closing your windows 
call minpac#add('moll/vim-bbye')

" Reopen files at the last edit position
call minpac#add('farmergreg/vim-lastplace')

" Explorer
call minpac#add('nvim-tree/nvim-tree.lua')
call minpac#add('nvim-tree/nvim-web-devicons') " For file icons
nnoremap <leader>e :NvimTreeToggle<cr>
lua << EOF
-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
EOF

" Auto pair
" all add(g:coc_global_extensions, 'coc-pairs')

" Highlight word under cursor and its occurrences
" also color colorcodes, e.g. #ff0000
" call add(g:coc_global_extensions, 'coc-highlight')
" call add(g:coc_global_extensions, 'coc-spell-checker')

" Highlight yanked text and persist yank list across vim.
" Make sure have `:echo exists('##TextYankPost')`
" call add(g:coc_global_extensions, 'coc-yank')

