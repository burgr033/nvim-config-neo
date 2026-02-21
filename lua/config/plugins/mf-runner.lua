return {
  "burgr033/mf-runner.nvim",
  cmd = { "MFROpen", "MFRRun", "MFREdit" },
  dependencies = {
    "folke/snacks.nvim",
  },
  opts = {},
  keys = {
    {
      "<Leader>rr",
      "<cmd>MFROpen<cr>",
      desc = "run makefile or justfile run",
    },
  },
}
