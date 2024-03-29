return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        "<leader><leader>",
        "<cmd>Telescope find_files no_ignore=true find_command=rg,--hidden,--files<cr>",
        desc = "Find files (all)",
      },
    },
    opts = {
      defaults = {
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        no_ignore = true,
        prompt_prefix = "🔍 ",
        file_ignore_patterns = {
          "node_modules",
        },
      },
    },
  },
}
