return {
  "saghen/blink.cmp",
  event = "VimEnter",
  version = "1.*",
  -- TODO: Snippets
  dependencies = {},
  opts = {
    keymap = {
      preset = "default",
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
