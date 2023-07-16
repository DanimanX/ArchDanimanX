vim.g.mapleader = "/"

vim.cmd([[

"Funcion que lanza un date con F1
nmap <F1> i<C-R>=strftime("%Y%m%d")<CR><Esc>

augroup CPT
  au!
  au BufReadPre  *.cpt setl bin viminfo= noswapfile
  au BufReadPost *.cpt let $CPT_PASS = inputsecret("Password: ")
  au BufReadPost *.cpt silent 1,$!ccrypt -cb -E CPT_PASS
  au BufReadPost *.cpt set nobin
  au BufWritePre *.cpt set bin
  au BufWritePre *.cpt silent! 1,$!ccrypt -e -E CPT_PASS
  au BufWritePost *.cpt silent! u
  au BufWritePost *.cpt set nobin
augroup END

"Configuración de TAB para VIM de plugin Buffet
nmap <leader>1 <Plug>BuffetSwitch(1)
nmap <leader>2 <Plug>BuffetSwitch(2)
nmap <leader>3 <Plug>BuffetSwitch(3)
nmap <leader>4 <Plug>BuffetSwitch(4)
nmap <leader>5 <Plug>BuffetSwitch(5)
nmap <leader>6 <Plug>BuffetSwitch(6)
nmap <leader>7 <Plug>BuffetSwitch(7)
nmap <leader>8 <Plug>BuffetSwitch(8)
nmap <leader>9 <Plug>BuffetSwitch(9)
nmap <leader>0 <Plug>BuffetSwitch(10)

"Config wiki
let g:vimwiki_list = [{'path': '/wiki/wiki/'}]

"Configuracion para Floaterm
let g:floaterm_keymap_new    = '<F7>'
let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_toggle = '<F12>'

let g:floaterm_height = 1.0
let g:floaterm_width = 0.8

autocmd BufNewFile,BufRead Jenkinsfile* setfiletype groovy

"Accesos para Telescope
" Find files using Telescope command-line sugar.
nnoremap <leader><space> <cmd>Telescope find_files<cr>
nnoremap <leader><space>g <cmd>Telescope live_grep<cr>
nnoremap <leader><space>b <cmd>Telescope buffers<cr>
nnoremap <leader><space>h <cmd>Telescope help_tags<cr>

"Accesos para gitsigns
nnoremap <leader><leader>g <cmd>Gitsigns toggle_current_line_blame<cr>
nnoremap <leader><leader>b <cmd>Gitsigns preview_hunk<cr>

"Accesos para Explorador
nnoremap <leader><leader>e <cmd>Explore<cr>

"Accesos para lspsaga
nnoremap <silent> <C-j> <Cmd>Lspsaga diagnostic_jump_next<CR>
nnoremap <silent>K <Cmd>Lspsaga hover_doc<CR>
inoremap <silent> <C-k> <Cmd>Lspsaga signature_help<CR>
nnoremap <silent> gh <Cmd>Lspsaga lsp_finder<CR>

"Config para cerrar terminal
tnoremap <Esc> <C-\><C-n>

"autocmd BufEnter * lua require'completion'.on_attach()
" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c

"Config para netwr
let g:netrw_banner = 0
let g:netrw_browse_split = 3
let g:netrw_altv = 1
let g:netrw_winsize = 25
]])
