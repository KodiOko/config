return {
  "stevearc/conform.nvim",
  lazy = true,
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    formatters_by_ft = {
      php = { "pretty-php" },
      json = { "prettier" },
    },
    notify_on_error = true,
  },
}
