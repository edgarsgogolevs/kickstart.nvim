-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
-- TODO: add find TODOs functionality
-- TODO: Treesitter SQL injection for Go
vim.g.pymode_indent = 0
vim.g.python_recommended_style = 0
vim.api.nvim_command 'autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE'
vim.api.nvim_command 'autocmd ColorScheme * highlight NormalNC ctermbg=NONE guibg=NONE'
return {}
