return {
  'ThePrimeagen/harpoon',
  lazy = false,
  config = function()
    vim.cmd 'highlight! HarpoonInactive guibg=NONE guifg=#f6c3d6'
    vim.cmd 'highlight! HarpoonActive guibg=NONE guifg=#e48080'
    vim.cmd 'highlight! HarpoonNumberActive guibg=NONE guifg=#fd81a5'
    vim.cmd 'highlight! HarpoonNumberInactive guibg=NONE guifg=#fd81a5'
    vim.cmd 'highlight! TabLineFill guibg=NONE guifg=white'

    require('harpoon').setup {
      tabline = true,
      tabline_prefix = '   ',
      tabline_suffix = '   ',
      menu = {
        width = vim.api.nvim_win_get_width(0) - 20,
      },
    }
  end,
  opts = {
    menu = {
      width = vim.api.nvim_win_get_width(0) - 20,
    },
    -- sets the marks upon calling `toggle` on the ui, instead of require `:w`.
    save_on_toggle = false,

    -- saves the harpoon file upon every change. disabling is unrecommended.
    save_on_change = true,

    -- sets harpoon to run the command immediately as it's passed to the terminal when calling `sendCommand`.
    enter_on_sendcmd = false,

    -- closes any tmux windows harpoon that harpoon creates when you close Neovim.
    tmux_autoclose_windows = false,

    -- filetypes that you want to prevent from adding to the harpoon list menu.
    excluded_filetypes = { 'harpoon', 'neoai-output', 'neoai-input' },

    -- set marks specific to each git branch inside git repository
    mark_branch = true,
  },
  after = function()
    require('telescope').load_extension 'harpoon'
  end,
  keys = {
    {
      '<leader>ht',
      function()
        if vim.opt.showtabline:get() ~= 0 then
          vim.opt.showtabline = 0
        else
          vim.opt.showtabline = 2
        end
      end,
      desc = '[Harpoon] Toggle [T]abline'
    },
    {
      '<leader>hd',
      function()
        require('harpoon.ui').toggle_quick_menu()
      end,
      desc = '[H]arpoon Quick Menu',
    },
    {
      '<leader>ha',
      function()
        require('harpoon.mark').add_file()
      end,
      desc = '[H]arpoon [A]dd file',
    },
    -- go to index mappings
    {
      '<leader>h1',
      function()
        require('harpoon.ui').nav_file(1)
      end,
    },
    {
      '<leader>h2',
      function()
        require('harpoon.ui').nav_file(2)
      end,
    },
    {
      '<leader>h2',
      function()
        require('harpoon.ui').nav_file(2)
      end,
    },
    {
      '<leader>h3',
      function()
        require('harpoon.ui').nav_file(3)
      end,
    },
    {
      '<leader>h4',
      function()
        require('harpoon.ui').nav_file(4)
      end,
    },
    {
      '<leader>h5',
      function()
        require('harpoon.ui').nav_file(5)
      end,
    },
    {
      '<leader>h6',
      function()
        require('harpoon.ui').nav_file(6)
      end,
    },
    {
      '<leader>h7',
      function()
        require('harpoon.ui').nav_file(7)
      end,
    }, {
      '<leader>h8',
      function()
        require('harpoon.ui').nav_file(8)
      end,
    },
    {
      '<leader>h9',
      function()
        require('harpoon.ui').nav_file(9)
      end,
    },
  },
}
