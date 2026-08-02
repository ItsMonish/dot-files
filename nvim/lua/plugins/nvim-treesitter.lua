return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  config = function ()
    install_dir = vim.fn.stdpath('data') .. "/site"
  end
}
