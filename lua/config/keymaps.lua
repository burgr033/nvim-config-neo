local mappings = {}
for _, mode in ipairs { "n", "i", "v", "t", "x" } do
  mappings[mode] = {}
end

mappings.n = {
  ["<Leader>n"] = { "<Cmd>enew<CR>", desc = "New File" },
  ["<Leader>c"] = { "<Cmd>bd<CR>", desc = "close buffer" },
  ["j"] = { "v:count == 0 ? 'gj' : 'j'", expr = true, silent = true, desc = "Move cursor down" },
  ["k"] = { "v:count == 0 ? 'gk' : 'k'", expr = true, silent = true, desc = "Move cursor up" },
  ["<Leader>w"] = { "<Cmd>w<CR>", desc = "Save" },
  ["<Leader>q"] = { "<Cmd>confirm q<CR>", desc = "Quit Window" },
  ["<Leader>Q"] = { "<Cmd>confirm qall<CR>", desc = "Exit" },
  ["<Leader>/"] = { "gcc", remap = true, desc = "Toggle comment line" },
  ["ü"] = { ":", desc = "" },
  ["ö"] = { "{", desc = "" },
  ["ä"] = { "}", desc = "" },
  ["<C-S-Up>"] = { "<cmd>resize +2<cr>", desc = "Increase Window height" },
  ["<C-S-Down>"] = { "<cmd>resize -2<cr>", desc = "Decrease Window height" },
  ["<C-S-Left>"] = { "<cmd>vertical resize +2<cr>", desc = "Increase Window width" },
  ["<C-S-Right>"] = { "<cmd>vertical resize -2<cr>", desc = "Decrease Window width" },
  ["<C-Left>"] = { "<C-w>h", desc = "Move to left split" },
  ["<C-Down>"] = { "<C-w>j", desc = "Move to below split" },
  ["<C-Up>"] = { "<C-w>k", desc = "Move to above split" },
  ["<C-Right>"] = { "<C-w>l", desc = "Move to right split" },
  ["<C-Tab>"] = { "<cmd>bnext<cr>", desc = "Tab through Buffers" },
  ["<S-Tab>"] = { "<cmd>bprevious<cr>", desc = "Tab through Buffers" },
  ["<leader>la"] = { vim.lsp.buf.code_action, lsp = { method = "textDocument/codeAction" }, desc = "Code Action" },
  ["<leader>ld"] = { vim.lsp.buf.hover, desc = "Hover diagnostics" },
  ["<leader>lR"] = {
    function() require("snacks.picker").lsp_references() end,
    lsp = { method = "textDocument/references" },
    desc = "Search references",
  },
  ["<leader>lj"] = {
    function() require("snacks.picker").lsp_definitions() end,
    lsp = { method = "textDocument/definition" },
    desc = "jump to definition",
  },
  ["<leader>ls"] = {
    function() require("snacks.picker").lsp_symbols() end,
    desc = "search symbols",
  },
  ["<leader>lS"] = {
    function() require("snacks.picker").lsp_workspace_symbols() end,
    desc = "search workspace symbols",
  },
}

mappings.i = {
  ["<S-Tab>"] = { "<C-d>", desc = "outdent" },
}

mappings.x = {
  ["j"] = mappings.n["j"],
  ["k"] = mappings.n["k"],
  ["<Leader>/"] = { "gc", remap = true, desc = "Toggle comment" },
}

mappings.v = {
  ["<S-Tab>"] = { "<gv", desc = "Unindent line" },
  ["<Tab>"] = { ">gv", desc = "Indent line" },
}

mappings.t = {
  ["<esc>"] = { "<C-\\><C-n>", desc = "move out of term mode" },
  ["<C-S-Up>"] = { "<cmd>resize +2<cr>", desc = "Increase Window height" },
  ["<C-S-Down>"] = { "<cmd>resize -2<cr>", desc = "Decrease Window height" },
  ["<C-S-Left>"] = { "<cmd>vertical resize +2<cr>", desc = "Increase Window width" },
  ["<C-S-Right>"] = { "<cmd>vertical resize -2<cr>", desc = "Decrease Window width" },
  ["<C-Left>"] = { "<cmd>wincmd h<CR>", desc = "Move to left split" },
  ["<C-Down>"] = { "<cmd>wincmd j<CR>", desc = "Move to below split" },
  ["<C-Up>"] = { "<cmd>wincmd k<CR>", desc = "Move to above split" },
  ["<C-Right>"] = { "<cmd>wincmd l<CR>", desc = "Move to right split" },
}

require("config.util").set_mappings(mappings)
