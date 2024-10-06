require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("n", "<leader>-", require("oil").toggle_float, { desc = "Toggle Oil" })
map("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
map("n", "<leader>tf", "<cmd>GoTestFile<cr>", { desc = "Run GoTestFile" })
map("n", "<leader>tF", "<cmd>GoTestFunc<cr>", { desc = "Run GoTestFunc" })
map("n", "<leader>tm", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Diagnostics (Trouble)" })
map("n", "<leader>tt", "<cmd>Trouble symbols toggle<cr>", { desc = "Symbols (Trouble)" })

map("n", "<leader>tl", "<cmd>Trouble loclist toggle<cr>", { desc = "Location List (Trouble)" })

map("n", "<leader>t", ":ToggleTerm<CR>", { desc = "Toggle terminal", silent = true })

map("n", "<leader>sf", "<cmd>Telescope find_files<cr>", { desc = "[S]earch [F]iles" })
-- telescope
map("n", "<leader>sg", require("telescope.builtin").live_grep, { desc = "[S]earch by [G]rep" })
map("n", "<leader>sw", require("telescope.builtin").grep_string, { desc = "[S]earch current [W]ord" })
map("n", "<leader><leader>", require("telescope.builtin").buffers, { desc = "[ ] Find existing buffers" })
map("n", "<leader>sh", require("telescope.builtin").help_tags, { desc = "[S]earch [H]elp" })

map("n", "<leader>sm", "<cmd>Telescope marks<CR>", { desc = "telescope find marks" })

map("n", "<leader>sgc", "<cmd>Telescope git_commits<CR>", { desc = "telescope git commits" })
map("n", "<leader>sgs", "<cmd>Telescope git_status<CR>", { desc = "telescope git status" })

map("n", "<leader>st", "<cmd>Telescope terms<CR>", { desc = "telescope pick hidden term" })

map("n", "<leader>sk", require("telescope.builtin").keymaps, { desc = "[S]earch [K]eymaps" })

map(
  "n",
  "<leader>sF",
  "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>",
  { desc = "[S]earch [F]iles" }
)

map("n", "<leader>sD", function()
  return require("telescope.builtin").diagnostics(vim.tbl_extend("force", {}, {
    line_width = "full", -- or specify a number, e.g., 100
  }))
end, { desc = "[S]earch [D]iagnostics" })
map("n", "<leader>sd", require("telescope.builtin").diagnostics, { desc = "[S]earch [D]iagnostics" })
map("n", "<leader>sr", require("telescope.builtin").resume, { desc = "[S]earch [R]esume" })
map("n", "<leader>s.", require("telescope.builtin").oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })

map(
  "n",
  "<leader>sf",
  "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>",
  { desc = "[S]earch [F]iles" }
)
map("n", "<leader>ss", require("telescope.builtin").builtin, { desc = "[S]earch [S]elect Telescope" })

map("n", "<leader>th", function()
  require("nvchad.themes").open()
end, { desc = "telescope nvchad themes" })
