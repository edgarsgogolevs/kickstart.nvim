return {
  'zbirenbaum/copilot.lua',
  cmd = 'Copilot',
  event = 'InsertEnter',
  config = function()
    require('copilot').setup {
      suggestion = {
        keymap = {
          accept = '<C-j>',
          accept_word = "<C-k>",
          dismiss = '<C-a>',
          next = '<C-s>',
          prev = false,
        },
      },
    }
  end,
}
