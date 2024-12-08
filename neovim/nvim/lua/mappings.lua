-- general mappings
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<leader>q", "<cmd> :bp<bar>sp<bar>bn<bar>bd<CR>")
vim.keymap.set("n", "<leader>w", "<cmd> w <CR>")
vim.keymap.set("i", "jk", "<ESC>")
--
-- copy whole filecontent
vim.keymap.set("n", "<C-c>", "<cmd> %y+ <CR>")

-- nvimtree
-- vim.keymap.set("n", "<leader>n", "<cmd> NvimTreeToggle <CR>")
-- vim.keymap.set("n", "<leader>h", "<cmd> NvimTreeFocus <CR>")

-- telescope
vim.keymap.set("n", "<leader>ff", "<cmd> Telescope find_files <CR>")
vim.keymap.set("n", "<leader>fh", "<cmd> Telescope help_tags <CR>")
vim.keymap.set("n", "<leader>fb", "<cmd> Telescope buffers <CR>")
vim.keymap.set("n", "<leader>fo", "<cmd> Telescope oldfiles <CR>")
vim.keymap.set("n", "<leader>fw", "<cmd> Telescope live_grep <CR>")
vim.keymap.set("n", "<leader>fs", "<cmd> Telescope git_status <CR>")
vim.keymap.set("n", "<leader>fd", "<cmd> Telescope diagnostics <CR>")
vim.keymap.set(
	"n",
	"<leader>fi",
	"<cmd> Telescope current_buffer_fuzzy_find sorting_strategy=ascending prompt_position=top <CR>"
)

-- vim.keymap.set("n", "[d", "vim.diagnostic.goto_prev", { noremap = true, silent = true })
-- vim.keymap.set("n", "]d", "vim.diagnostic.goto_next", { noremap = true, silent = true })
vim.keymap.set("n", "[q", "<cmd> cprev <CR>")
vim.keymap.set("n", "]q", "<cmd> cnext <CR>")

-- bufferline, cycle buffers
-- vim.keymap.set("n", "<Tab>", "<cmd> BufferLineCycleNext <CR>")
-- vim.keymap.set("n", "<S-Tab>", "<cmd> BufferLineCyclePrev <CR>")
-- vim.keymap.set("n", "<C-q>", "<cmd> bd <CR>")
vim.keymap.set("n", "<leader>1", "<cmd>BufferLineGoToBuffer 1<CR>")
vim.keymap.set("n", "<leader>2", "<cmd>BufferLineGoToBuffer 2<CR>")
vim.keymap.set("n", "<leader>3", "<cmd>BufferLineGoToBuffer 3<CR>")
vim.keymap.set("n", "<leader>4", "<cmd>BufferLineGoToBuffer 4<CR>")
vim.keymap.set("n", "<leader>5", "<cmd>BufferLineGoToBuffer 5<CR>")
vim.keymap.set("n", "<leader>6", "<cmd>BufferLineGoToBuffer 6<CR>")
vim.keymap.set("n", "<leader>7", "<cmd>BufferLineGoToBuffer 7<CR>")
vim.keymap.set("n", "<leader>8", "<cmd>BufferLineGoToBuffer 8<CR>")
vim.keymap.set("n", "<leader>9", "<cmd>BufferLineGoToBuffer 9<CR>")

-- comment.nvim
vim.keymap.set("v", "<leader>/", "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>")
vim.keymap.set("n", "<leader>/", function()
	require("Comment.api").toggle.linewise.current()
end)

-- undotree
vim.keymap.set("n", "<leader>ut", vim.cmd.UndotreeToggle)

-- LSP
vim.keymap.set("n", "ge", "<cmd>lua vim.diagnostic.open_float()<CR>", {})
vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", {})
vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", {})
vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", {})
vim.keymap.set("n", "grn", "<cmd>lua vim.lsp.buf.rename()<CR>", {})
vim.keymap.set("n", "gra", "<cmd>lua vim.lsp.buf.code_action()<CR>", {})
vim.keymap.set("n", "grr", "<cmd>lua vim.lsp.buf.references()<CR>", {})

-- move visual selection
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Fugitive
vim.keymap.set("n", "<leader>gb", ":Git blame<CR>", {})

-- copilot chat
vim.keymap.set("n", "<leader>cc", ":CopilotChat toggle<CR>", {})

-- multicursor
vim.keymap.set("n", "<c-k>", ":call vm#commands#add_cursor_up(0, v:count1)<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<c-j>", ":call vm#commands#add_cursor_down(0, v:count1)<cr>", { noremap = true, silent = true })
