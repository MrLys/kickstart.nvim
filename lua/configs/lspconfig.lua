-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()
local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = { "html", "cssls", "tailwindcss", "ts_ls", "gopls", "sqlls", "bashls", "zls", "ols" }
local nvlsp = require "nvchad.configs.lspconfig"
local map = vim.keymap.set
-- export on_attach & capabilities
--vim.o.rnu = true
local att = function(_, bufnr)
  local function opts(desc)
    return { buffer = bufnr, desc = "LSP " .. desc }
  end

  map("n", "gD", vim.lsp.buf.declaration, opts "Go to declaration")
  map("n", "gd", require("telescope.builtin").lsp_definitions, opts "Go to definition")
  map("n", "gi", require("telescope.builtin").lsp_implementations, opts "Go to implementation")
  map("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, opts "Add workspace folder")
  map("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, opts "Remove workspace folder")
  map("n", "<leader>D", require("telescope.builtin").lsp_type_definitions, opts "Type [D]efinition")
  map("n", "<leader>ds", function()
    require("telescope.builtin").lsp_document_symbols {
      symbol_width = 50,
      symbol_type_width = 25,
    }
  end, opts "[D]ocument [S]ymbols")

  map("n", "<leader>cr", require "nvchad.lsp.renamer", opts "NvRenamer")

  map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts "Code action")
  map("n", "gr", function()
    require("telescope.builtin").lsp_references()
  end, opts "Show references")
end

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = att,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
