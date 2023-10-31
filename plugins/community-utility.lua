return {
  -- manage neovim about message, notify, log, search, command
  { import = "astrocommunity.utility.noice-nvim" },
  {
    "folke/noice.nvim",
    opts = {
      presets = {
        lsp_doc_border = true,
        bottom_search = false,
      },
      routes = {
        {
          filter = {
            event = "msg_show",
            any = {
              { find = "%d+L, %d+B" },
              { find = "; after #%d+" },
              { find = "; before #%d+" },
            },
          },
          view = "mini",
        },
        -- { filter = { event = "msg_show", find = "AutoSave: saved at%s" }, opts = { skip = true } },
        { filter = { event = "notify", find = "No information available" }, opts = { skip = true } },
        { filter = { event = "msg_show", find = "DB: Query%s" }, opts = { skip = true } },
      },
    },
  },
  -- 连接数据库的 UI 操作
  { import = "astrocommunity.pack.full-dadbod" },
  {
    "kristijanhusak/vim-dadbod-ui",
    init = function()
      vim.g.db_ui_auto_execute_table_helpers = 1
      vim.g.db_ui_execute_on_save = 0
      vim.g.db_ui_win_position = "right"
      vim.g.db_ui_show_database_icon = 1
      vim.g.db_ui_use_nerd_fonts = 1
      vim.g.db_ui_force_echo_notifications = 1
    end,
  },
}
