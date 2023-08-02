local maps = vim.api.nvim_set_keymap
local termopt = { silent = true }

maps("n", "<A-1>", ":BufferLineGoToBuffer 1<CR>", termopt)
maps("n", "<A-2>", ":BufferLineGoToBuffer 2<CR>", termopt)
maps("n", "<A-3>", ":BufferLineGoToBuffer 3<CR>", termopt)
maps("n", "<A-4>", ":BufferLineGoToBuffer 4<CR>", termopt)
maps("n", "<A-5>", ":BufferLineGoToBuffer 5<CR>", termopt)

maps("n", "<C-f>", ":NeoTreeShowToggle<CR>", termopt)

maps("n", "<leader>ff", ":Telescope find_files<CR>", termopt)
maps("n", "<leader>fg", ":Telescope live_grep<CR>", termopt)
maps("n", "<leader>fb", ":Telescope buffers<CR>", termopt)
maps("n", "<leader>fh", ":Telescope help_tags<CR>", termopt)

maps("n", "<leader>s", ":! ", termopt)
