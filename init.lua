return {
  mappings = function(maps) return require("user.keymaps").mappings(maps) end,
  diagnostics = {
    update_in_insert = false,
    virtual_text = { severity = { min = vim.diagnostic.severity.WARN } },
    underline = true,
    signs = { severity = { min = vim.diagnostic.severity.WARN } },
  },
  lazy = {
    defaults = { lazy = true },
    ui = {
      width = 0.8,
      height = 0.8,
      border = "rounded",
    },
    performance = {
      rtp = {
        -- customize default disabled vim plugins
        disabled_plugins = { "tohtml", "gzip", "matchit", "zipPlugin", "netrwPlugin", "tarPlugin" },
      },
    },
  },
  lsp = {
    -- enable servers that you already have installed without mason
    servers = {
      -- "pyright",
    },
  },
}
