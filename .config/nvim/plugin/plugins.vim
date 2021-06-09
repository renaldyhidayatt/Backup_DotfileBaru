" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
  Plug 'neovim/nvim-lspconfig'
  Plug 'kabouzeid/nvim-lspinstall'
  Plug 'kyazdani42/nvim-tree.lua'
  Plug 'glepnir/galaxyline.nvim'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'ryanoasis/vim-devicons'
  Plug 'hrsh7th/nvim-compe'
  Plug 'folke/tokyonight.nvim'
  Plug 'norcalli/nvim-colorizer.lua'

  " Plug 'liuchengxu/vim-which-key'
  Plug 'romgrk/barbar.nvim'
  Plug 'folke/which-key.nvim'

  Plug 'tpope/vim-commentary'
  Plug 'wakatime/vim-wakatime'

  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-fzy-native.nvim'
  Plug 'nvim-treesitter/nvim-treesitter',  {'do': ':TSUpdate'}
    
  "Plug 'ntpeters/vim-better-whitespace'
  Plug 'RRethy/vim-illuminate'
  Plug 'AndrewRadev/tagalong.vim'

  Plug 'alvan/vim-closetag'
  Plug 'windwp/nvim-autopairs'
call plug#end()

autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif