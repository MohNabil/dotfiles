--------------
-- obsidian --
--------------
-- Navigate to Obsidian Vault
vim.keymap.set("n", "<leader>oo", ":cd /Users/Mohamed_Nabil/Documents/Obsidian\\ Vault<cr>")

-- Create new note (example using ObsidianTemplate)
vim.keymap.set("n", "<leader>on", function()
  -- Define the path to your Obsidian templates folder
  local templates_path = "/Users/Mohamed_Nabil/Documents/Obsidian Vault/templates"

  -- Use Telescope to choose a template
  require("telescope.builtin").find_files({
    prompt_title = "Choose a Template",
    cwd = templates_path, -- Set the directory to the templates folder
    attach_mappings = function(_, map)
      map("i", "<CR>", function(prompt_bufnr)
        local entry = require("telescope.actions.state").get_selected_entry()
        local filename = entry.value
        require("telescope.actions").close(prompt_bufnr)

        -- Use the selected template with ObsidianTemplate
        vim.cmd("ObsidianTemplate " .. filename)
      end)
      return true
    end,
  })
end, { desc = "Choose a template for new note" })

-- Format note title: strip date and replace dashes with spaces
vim.keymap.set("n", "<leader>of", ":s/\\(# \\)[^_]*_/\\1/ | s/-/ /g<cr>")

-- Search for files in full Obsidian Vault using Telescope
vim.keymap.set("n", "<leader>os",
  ":Telescope find_files search_dirs={\"/Users/Mohamed_Nabil/Documents/Obsidian\\ Vault\"}<cr>")
vim.keymap.set("n", "<leader>oz",
  ":Telescope live_grep search_dirs={\"/Users/Mohamed_Nabil/Documents/Obsidian\\ Vault\"}<cr>")

-- Delete file in current buffer
vim.keymap.set("n", "<leader>odd", ":!rm '%:p'<cr>:bd<cr>")
