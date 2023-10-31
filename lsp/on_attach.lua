return function(client, bufnr)
  -- enable rounded border window when use :LspInfo command
  require("lspconfig.ui.windows").default_options.border = "rounded"
end
