return {
  'supermaven-inc/supermaven-nvim',
  opts = {
    keymaps = {
      accept_suggestion = '<C-j>',
      clear_suggestion = '<C-a>',
      accept_word = '<C-w>',
    },
  },
  -- config = function ()
  --   require('supermaven-nvim.api').stop()
  -- end,
  --
  keys = {
    {
      '<leader>st',
      function()
        require('supermaven-nvim.api').toggle()
      end,
      desc = '[S]upermaven [T]oggle',
    },
    {
      '<C-s><C-s>',
      function()
        require('supermaven-nvim.api').toggle()
      end,
      mode = 'i',
      -- ararat
      desc = 'Spermaven Toggle',
    },
  },
}
