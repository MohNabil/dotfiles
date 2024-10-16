return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.5',
  dependencies = { 'nvim-lua/plenary.nvim' },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })
      require("telescope").load_extension("ui-select")
    end
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.3",
    config = function(_, opts)
      require("telescope").setup(opts)
      require("telescope").load_extension('cmdline')
      require("telescope").load_extension("noice")
    end,
    dependencies = {
      'jonarrien/telescope-cmdline.nvim',
    },
    keys = {
      { '<leader><leader>', '<cmd>Telescope cmdline<cr>', desc = 'Cmdline' }
    }
  }
}
