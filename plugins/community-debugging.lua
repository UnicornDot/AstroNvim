return {
  "mfussenegger/nvim-dap",
  enabled = true,
  dependencies = {
    { import = "astrocommunity.debugging.persistent-breakpoints-nvim" },
    {
      "Weissle/persistent-breakpoints.nvim",
      keys = function() return {} end,
    },
    { import = "astrocommunity.debugging.nvim-dap-virtual-text" },
  }
}
