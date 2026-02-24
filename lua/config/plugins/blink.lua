return {
  "saghen/blink.cmp",
  event = "InsertEnter",
  version = "1.*",

  dependencies = { "rafamadriz/friendly-snippets" },
  opts = {
    keymap = {
      preset = "enter",
    },
    appearance = {
      nerd_font_variant = "mono",
    },

    completion = {
      documentation = { auto_show = false, auto_show_delay_ms = 500 },
    },

    sources = {
      default = { "lsp", "path", "snippets" },
    },

    fuzzy = { implementation = "lua" },

    signature = { enabled = true },
  },
}
