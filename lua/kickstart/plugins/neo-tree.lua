-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim
-- TODO: keybinds for document_symbols + symbols on the right
-- TODO: fix the initial thing

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '<leader>e', ':Neotree toggle float reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    sources = { 'filesystem' },
    close_if_last_window = true,
    enable_git_status = true,
    enable_modified_markers = true,
    sort_case_insensitive = true,
    window = {
      mappings = {
        ['l'] = 'open',
        ['h'] = 'close_node',
      },
      popup = {
        border = {
          style = 'single',
          highlight = 'FloatBorder',
        },
        size = {
          width = '80%',
          height = '80%',
        },
      },
    },
    filesystem = {
      use_libuv_file_watcher = true,
      filtered_items = {
        hide_dotfiles = false,
        hide_gitignored = true,
        hide_by_name = {
          'node_modules',
        },
        never_show = {
          '.DS_Store',
          'thumbs.db',
        },
      },
    },
  },
}
