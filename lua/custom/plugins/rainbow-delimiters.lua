return {
  'https://gitlab.com/HiPhish/rainbow-delimiters.nvim',
  dependencies = { 'nvim-treesitter/nvim-treesitter', 'rebelot/kanagawa.nvim' },
  config = function()
    -- kanagawa dragon config
    local colors = require('kanagawa.colors').setup({ theme = 'dragon' }).palette
    vim.api.nvim_set_hl(0, 'RainbowRed', { fg = colors.dragonAqua })
    vim.api.nvim_set_hl(0, 'RainbowYellow', { fg = colors.carpYellow })
    vim.api.nvim_set_hl(0, 'RainbowBlue', { fg = colors.dragonBlue })
    vim.api.nvim_set_hl(0, 'RainbowOrange', { fg = colors.dragonPink })
    vim.api.nvim_set_hl(0, 'RainbowGreen', { fg = colors.dragonGreen })
    vim.api.nvim_set_hl(0, 'RainbowViolet', { fg = colors.dragonViolet })
    vim.api.nvim_set_hl(0, 'RainbowCyan', { fg = colors.lotusGreen2 })
    require('rainbow-delimiters.setup').setup {
      highlight = {
        'CmpItemKindEvent',
        'WarningMsg',
        'RainbowDelimiterBlue',
        'RainbowDelimiterOrange',
        'RainbowDelimiterGreen',
        'RainbowDelimiterViolet',
        'RainbowDelimiterCyan',
      },
    }
  end,
}
