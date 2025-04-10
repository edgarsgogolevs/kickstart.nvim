-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
vim.opt.tabstop = 4       -- Number of spaces a tab counts for
vim.opt.softtabstop = 2   -- Number of spaces when hitting <Tab>
vim.opt.shiftwidth = 2    -- Number of spaces for autoindent
vim.opt.expandtab = true  -- Convert tabs to spaces
vim.opt.wrap = false      -- Disable line wrapping
vim.g.skip_ts_context_commentstring_module = true

-- vim.g.pymode_indent = 0
-- vim.g.python_recommended_style = 0

-- transparent background
vim.api.nvim_command 'autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE'
vim.api.nvim_command 'autocmd ColorScheme * highlight NormalNC ctermbg=NONE guibg=NONE'

-- Style for hover things
vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(vim.lsp.handlers.hover, {
  border = 'rounded', -- Options: 'single', 'double', 'rounded', 'solid'
})
vim.diagnostic.config {
  float = {
    border = 'rounded',
  },
}

-- Run current Python file
function RunPythonInFloatingTerm()
  vim.cmd 'w' -- Save file
  local buf = vim.api.nvim_create_buf(false, true)
  local width = math.floor(vim.o.columns * 0.8)
  local height = math.floor(vim.o.lines * 0.8)
  local row = math.floor((vim.o.lines - height) / 2)
  local col = math.floor((vim.o.columns - width) / 2)

  local opts = {
    relative = 'editor',
    width = width,
    height = height,
    row = row,
    col = col,
    style = 'minimal',
    border = 'rounded',
  }

  local fname = vim.fn.expand '%:p'

  vim.api.nvim_open_win(buf, true, opts)
  vim.fn.termopen { 'python', fname }
end

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'python',
  callback = function()
    vim.keymap.set('n', '<leader>dr', RunPythonInFloatingTerm, {
      noremap = true,
      silent = true,
      buffer = true,
      desc = '[d]ocument [r]un',
    })
  end,
})

-- Run Python repl
function RunPythonReplInFloatingTerm()
  vim.cmd 'w' -- Save file
  local buf = vim.api.nvim_create_buf(false, true)
  local width = math.floor(vim.o.columns * 0.8)
  local height = math.floor(vim.o.lines * 0.8)
  local row = math.floor((vim.o.lines - height) / 2)
  local col = math.floor((vim.o.columns - width) / 2)

  local opts = {
    relative = 'editor',
    width = width,
    height = height,
    row = row,
    col = col,
    style = 'minimal',
    border = 'rounded',
  }

  vim.api.nvim_open_win(buf, true, opts)
  vim.fn.termopen { 'python' }
end

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'python',
  callback = function()
    vim.keymap.set('n', '<leader>dR', RunPythonReplInFloatingTerm, {
      noremap = true,
      silent = true,
      buffer = true,
      desc = '[d]ocument run [R]epl',
    })
  end,
})

return {}
