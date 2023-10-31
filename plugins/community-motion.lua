-- TODO: check keys
return {
  { import = "astrocommunity.motion.nvim-surround" },
  { import = "astrocommunity.motion.flash-nvim" },
  {
    "folke/flash.nvim",
    keys = function() return {} end,
  },
  { import = "astrocommunity.motion.marks-nvim" },
  {
    "chentoast/marks.nvim",
    opts = {
      default_mappings = false,
    },
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      window = {
        border = "rounded",
        position = "bottom",
        margin = { 1, 0, 1, 0 },
        padding = { 2, 2, 2, 2 },
        winblend = 0,
      }
    }
  }
}
