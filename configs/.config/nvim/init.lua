--Configuraciones globales de nvim
require('config/config')

--Instalacion de Plugins
require('packer/packer')

--Config Plugins
require('telescope/telescope')
require('lspformat/lspformat')
require('cmp-config/cmp-config')
require('treesitter/treesitter')

--Mapeo de teclas
require('config/maps')

--Temas NeoVim
require('config/themes')

require'lspconfig'.terraformls.setup{}

--Tab 
require('feline/feline')

--Completion Snippet
require('completions/completions')
