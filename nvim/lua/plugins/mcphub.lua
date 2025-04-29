return {
  'ravitemer/mcphub.nvim',
  dependencies = 'nvim-lua/plenary.nvim', -- mcphub requires plenary
  -- No 'opts' table needed if all configuration is in the setup function
  -- opts = {
  --   token = '',
  --   ui = {
  --     float = {
  --       border = 'rounded',
  --       width = 0.8,
  --       height = 0.6,
  --     }
  --   },
  -- },
  -- cmd = { 'Mcphub', 'McphubToggle' }, -- Uncomment if you want lazy loading based on command
  -- build = "npm install -g mcp-hub@latest", -- Keep commented out for remote server
  config = function()
    require("mcphub").setup({
      command = "npx",
      -- Specify the arguments for the command
      args = { "-y", "@upstash/context7-mcp@latest" }, -- Use npx to run the latest Context7 MCP package
      -- -- Set the default stdio server port to nil to prevent binding
      -- port = 37373,
      -- -- Ensure this is not trying to configure a local server:
      -- active_server = 'LocalOllamaProxy', -- Use the name from your servers.json
      -- native_servers = {},                -- Keep this empty for remote server setup
      -- use_bundled_binary = false,         -- Ensure this is false

      -- Use server_url to point directly to the remote backend
      -- server_url = 'http://127.0.0.1:5000', -- Point directly to your backend's base URL

      -- Keep config pointing to servers.json (it seems required for structure)
      -- Make sure ~/.config/mcphub/servers.json exists and has the {"mcpServers": {...}} structure
      config = vim.fn.expand("~/.config/mcphub/servers.json"),

      -- Uncomment and set active_server IF you have multiple servers in servers.json
      -- and need to specify which one is active. If only one, server_url might suffice.
      -- active_server = "LocalOllamaProxy", -- Matches the name in servers.json

      -- You can keep the rest of the default options as they are or modify UI etc.
      auto_approve = false,
      auto_toggle_mcp_servers = true,
      extensions = {
        avante = { make_slash_commands = true, },
        codecompanion = { show_result_in_chat = true, make_vars = true, make_slash_commands = true, },
      },
      ui = {
        window = {
          width = 0.8, height = 0.8, relative = "editor", zindex = 50, border = "rounded",
        },
        wo = {},
      },
      on_ready = function(hub) end,
      on_error = function(err) end,
      shutdown_delay = 600000,
      log = {
        level = vim.log.levels.DEBUG,                                -- Change WARN to DEBUG
        to_file = true,                                              -- Send logs to a file
        file_path = vim.fn.expand("~/.local/state/nvim/mcphub.log"), -- Specify log file path
        prefix = "MCPHub",
      },
    })
  end,
  -- If you uncommented cmd above for lazy loading, keep it here:
  -- cmd = { 'Mcphub', 'McphubToggle' },
}
