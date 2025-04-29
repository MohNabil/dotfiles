return {
  {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("oil").setup {
        columns = { "Icon" },
        keymaps = {
          ["<C-c>"] = false,
          ["<M-h>"] = "actions.select_split",
          ["q"] = "actions.close",
        },
        float = {
          padding = 2,
          max_width = 100,
          max_height = 0,
        },
        view_options = {
          show_hidden = true,
        },
      }
      --Open parent directory in current window vim.
      vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
      --Open parent directory in floating window vim.
      vim.keymap.set("n", "<leader>o", require("oil").toggle_float)
    end,
  },
}
