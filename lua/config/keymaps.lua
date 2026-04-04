-- Leader key
vim.g.mapleader = " "

-- LSP Keymaps
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover Documentation" })
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to Definition" })
vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Go to References" })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename Symbol" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Actions" })
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "Format File" })

-- Diagnostics (Errors / Warnings)
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show Error Popup" })
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Previous Diagnostic" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Next Diagnostic" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Diagnostics List" })

-- Telescope keymaps
vim.keymap.set("n", "<leader>ff", function() require("telescope.builtin").find_files() end, { desc = "Find Files" })
vim.keymap.set("n", "<leader>fg", function() require("telescope.builtin").live_grep() end, { desc = "Live Grep" })
vim.keymap.set("n", "<leader>fb", function() require("telescope.builtin").buffers() end, { desc = "List Buffers" })
vim.keymap.set("n", "<leader>fh", function() require("telescope.builtin").help_tags() end, { desc = "Help Tags" })

-- GitSigns keymaps
vim.keymap.set("n", "]c", "&diff ? ']c' : '<cmd>Gitsigns next_hunk<CR>'", { expr = true })
vim.keymap.set("n", "[c", "&diff ? '[c' : '<cmd>Gitsigns prev_hunk<CR>'", { expr = true })
vim.keymap.set("n", "<leader>hs", "<cmd>Gitsigns stage_hunk<CR>", { desc = "Stage Hunk" })
vim.keymap.set("n", "<leader>hr", "<cmd>Gitsigns reset_hunk<CR>", { desc = "Reset Hunk" })
-- Oil
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Bufferline
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", { silent = true, desc = "Next Buffer" })
vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { silent = true, desc = "Previous Buffer" })
vim.keymap.set("n", "<leader>x", ":bdelete<CR>", { silent = true, desc = "Close Buffer" })

-- Flash
vim.keymap.set({ "n", "x", "o" }, "s", function() require("flash").jump() end, { desc = "Flash" })
vim.keymap.set({ "n", "x", "o" }, "S", function() require("flash").treesitter() end, { desc = "Flash Treesitter" })
