return {
  {
    "stevearc/oil.nvim",
    dependencies = {
      { "nvim-mini/mini.icons", opts = {} },
    },
    opts = {
      default_file_explorer = true,
      view_options = {
        float = {
          border = 1,
        },

        is_hidden_file = function(name, bufnr)
          if vim.startswith(name, "..") then return false end
          return vim.startswith(name, ".")
        end,
      },

      columns = { "icon" },

      win_options = {
        signcolumn = "yes:2",
      },
    },

    keys = {
      {
        "<leader>e",
        function() require("oil").toggle_float() end,
        desc = "Open Oil",
      },
    },
  },

  {
    "refractalize/oil-git-status.nvim",
    ft = "oil",
    dependencies = {
      "stevearc/oil.nvim",
    },
    opts = {},
  },
}
