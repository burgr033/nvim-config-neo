return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "echasnovski/mini.icons",
  },
  config = function()
    require("mini.icons").setup()
    require("mini.icons").mock_nvim_web_devicons()
    require("lualine").setup {
      tabline = {
        lualine_a = {
          {
            "buffers",
            filetype_names = { snacks_dashboard = "Dashboard" },
            buffers_color = { active = "lualine_a_normal", inactive = "lualine_c_normal" },
          },
        },
        lualine_z = { "tabs" },
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { "filetype" },
        lualine_x = { "lsp_status" },
        lualine_y = { "location" },
        lualine_z = { "progress" },
      },
      options = {
        disabled_filetypes = {
          statusline = { "snacks_dashboard" },
        },
        -- always_show_tabline = false,
        section_separators = { left = " ", right = " " },
        component_separators = { left = " ", right = " " },
      },
    }
  end,
}
