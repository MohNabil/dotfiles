-- Lua configuration for lazy.nvim
return {
  -- nvim-web-devicons for file icons
  { 'kyazdani42/nvim-web-devicons' },

  -- nui.nvim for UI components
  { 'MunifTanjim/nui.nvim' },

  -- nvim-cmp for autocompletion
  { 'hrsh7th/nvim-cmp' },

  -- pieces-app/plugin_neovim
  {
    'pieces-app/plugin_neovim',
    config = function()
      -- Configuration for pieces-app/plugin_neovim
      require("pieces.config").host = "http://localhost:1000"
    end
  }
}
