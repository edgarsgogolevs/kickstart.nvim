return {
  'rose-pine/neovim',
  as = 'rose-pine',
  opts = {
    styles = {
      bold = true,
      italic = true,
      transparency = false,
    },
  },
  config = function()
    vim.cmd.colorscheme 'rose-pine'
  end,
}
