-- return {
--   'rose-pine/neovim',
--   as = 'rose-pine',
--   opts = {
--     styles = {
--       bold = true,
--       italic = true,
--       transparency = false,
--     },
--   },
--   config = function()
--     vim.cmd.colorscheme 'rose-pine'
--   end,
-- }

return {
  'rebelot/kanagawa.nvim',
  opts = {
    compile = false, -- enable compiling the colorscheme
    undercurl = true, -- enable undercurls
    commentStyle = { italic = false },
    functionStyle = {},
    keywordStyle = { italic = true },
    statementStyle = { bold = false },
    typeStyle = {},
    transparent = false, -- do not set background color
    dimInactive = false, -- dim inactive window `:h hl-NormalNC`
    terminalColors = true, -- define vim.g.terminal_color_{0,17}
    theme = 'dragon', -- Load "wave" theme when 'background' option is not set
    background = { -- map the value of 'background' option to a theme
      dark = 'dragon', -- try "dragon" !
      light = 'lotus',
    },
  },
  config = function ()
    vim.cmd.colorscheme 'kanagawa-dragon'
  end
}
