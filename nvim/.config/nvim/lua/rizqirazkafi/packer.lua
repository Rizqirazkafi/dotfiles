vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'RRethy/nvim-base16'
 -- A better status line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use 'kovetskiy/sxhkd-vim'
  use {
      'nvim-treesitter/nvim-treesitter',
      run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  } 
  use {'junegunn/fzf',
    run = '{ -> fzf#install() }'
  }
  use 'junegunn/fzf.vim'
  use {'neoclide/coc.nvim', branch = 'release'}
  use 'tpope/vim-commentary'
  use 'somini/vim-autoclose'
  use 'lervag/vimtex'
  -- use 'nathanaelkane/vim-indent-guides'
  use {'xuhdev/vim-latex-live-preview'}  
  -- use 'donraphaco/neotex'
end)
