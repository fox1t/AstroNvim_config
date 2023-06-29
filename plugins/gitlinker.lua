return {
  {
    "ruifm/gitlinker.nvim",
    opts = { mappings = nil },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    keys = {
      {
        "<leader>gY",
        '<cmd>lua require"gitlinker".get_repo_url()<cr>',
        desc = "Copy repository URL",
        mode = { "n", "v" },
      },
      {
        "<leader>gO",
        '<cmd>lua require"gitlinker".get_repo_url({action_callback = require"gitlinker.actions".open_in_browser})<cr>',
        desc = "Open repository URL in browser",
        mode = { "n", "v" },
      },
      {
        "<leader>gy",
        '<cmd>lua require"gitlinker".get_repo_url(n)<cr>',
        desc = "Copy repository permalink",
        mode = { "n" },
      },
      {
        "<leader>gy",
        '<cmd>lua require"gitlinker".get_repo_url(v)<cr>',
        desc = "Copy repository permalink",
        mode = { "v" },
      },
      {
        "<leader>go",
        '<cmd>lua require"gitlinker".get_buf_range_url("n", {action_callback = require"gitlinker.actions".open_in_browser})<cr>',
        desc = "Open repository permalink in browser",
        mode = { "n" },
      },
      {
        "<leader>go",
        '<cmd>lua require"gitlinker".get_buf_range_url("v", {action_callback = require"gitlinker.actions".open_in_browser})<cr>',
        desc = "Open repository permalink in browser",
        mode = { "v" },
      },
    },
  },
}
