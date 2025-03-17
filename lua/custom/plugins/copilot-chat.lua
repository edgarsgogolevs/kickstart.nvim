return {
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    dependencies = {
      { 'zbirenbaum/copilot.lua' },
      { 'nvim-telescope/telescope.nvim' },
      { 'nvim-lua/plenary.nvim', branch = 'master' }, -- for curl, log and async functions
    },
    build = 'make tiktoken', -- Only on MacOS or Linux
    opts = {
      model = 'claude-3.7-sonnet',
      window = {
        border = 'rounded',
        title = 'Zinaīds',
      },
      question_header = '# Lītuotuojs ', -- Header to use for user questions
      answer_header = '# Zinaīds ', -- Header to use for AI answers
      error_header = '# Klaida ', -- Header to use for errors
    },
    keys = {
      { '<leader>ac', '<cmd>CopilotChat<cr>', desc = 'Open Copilot Chat' },
    },
  },
}
