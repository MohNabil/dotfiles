-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness
---------------------
-- General Keymaps -------------------

-- for rtl
keymap.set("n", "<leader>A", ":set rightleft<CR>", { desc = "RTL" })
keymap.set("n", "<leader>E", ":set norightleft<CR>", { desc = "LTR" })

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
-- keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })                   -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })                 -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })                    -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })               -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })                     -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })              -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })                     --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })                 --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")  -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")   -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")     -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")   -- list available help tags

-- telescope git commands (not on youtube nvim video)
-- keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
-- keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
-- keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
-- keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

--trouble
-- keymap.set("n", "<leader>xx", function() require("trouble").toggle() end)
-- keymap.set("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end)
-- keymap.set("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end)
-- keymap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end)
-- keymap.set("n", "<leader>xl", function() require("trouble").toggle("loclist") end)
-- keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end)

-- Dismiss Noice Message
keymap.set("n", "<leader>nd", "<cmd>NoiceDismiss<CR>", { desc = "Dismiss Noice Message" })

-- Set up the keymap to show Git blame for the current line
keymap.set('n', '<leader>gb', '<cmd>Gitsigns blame_line<CR>', { desc = 'Show Git blame for current line' })

--Set inc-rename
keymap.set("n", "<leader>rn", ":IncRename ")

--Set pieces copilot
keymap.set("n", "<leader>pc", "<cmd>PiecesCopilot<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>ts", "<cmd>PiecesCreateSnippet<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>sc", "<cmd>PiecesConversations<CR>", { noremap = true, silent = true })

-- Set organize imports
keymap.set("n", "<leader>oi", "<cmd>OrganizeImports<CR>", { desc = "Organize Imports" })

-- Set avante
keymap.set("n", "<leader>as", "<cmd>AvanteAsk<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>ac", "<cmd>AvanteChat<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>at", "<cmd>AvanteToggle<CR>", { noremap = true, silent = true })
