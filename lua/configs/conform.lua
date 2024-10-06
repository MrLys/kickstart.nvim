local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    typescript = { "prettier", "prettierd" },
    typescriptreact = { "prettier", "prettierd" },
    javascript = { "prettier", "prettierd" },
    javascriptreact = { "prettier", "prettierd" },
    html = { "prettier" },
    go = { "goimports", "gofumpt" },
    json = { "prettier", "prettierd" },
    sql = { "sqlfmt" },
    dockerfile = { "hadolint" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
