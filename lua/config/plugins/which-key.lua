return {
  "folke/which-key.nvim",
  event = "VimEnter",
  opts = {
    delay = 0,
    icons = { mappings = vim.g.have_nerd_font },
    spec = {
      { "<leader>g", group = "git" },
      { "<leader>d", group = "debug" },
      { "<leader>r", group = "run" },
      { "<leader>f", group = "find" },
      { "<leader>l", group = "lsp" },
      { "<leader>x", group = "trouble" },
      { "<leader>t", group = "trouble" },
    },
  },
}
