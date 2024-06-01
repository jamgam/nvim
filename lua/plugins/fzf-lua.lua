return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local set = vim.keymap.set
    local fzf = require("fzf-lua")
    set("n", "<leader>fp", fzf.builtin, { desc = "Fzf Builtin Pickers" })
    set("n", "<leader>ff", fzf.files, { desc = "Fzf Files" })
    set("n", "<leader>fs", fzf.lsp_live_workspace_symbols, { desc = "Fzf Workspace Symbols" })
    set("n", "<leader>fS", fzf.lsp_document_symbols, { desc = "Fzf Document Symbols" })
    set("n", "<leader>fh", fzf.changes, { desc = "Fzf Changes" })
    set("n", "<leader>fk", fzf.keymaps, { desc = "Fzf Keys" })
    set("n", "<leader>fa", fzf.lsp_code_actions, { desc = "Fzf Code Actions" })
    set("n", "<leader>fd", fzf.diagnostics_workspace, { desc = "Fzf Diagnostics Workspace" })
    set("n", "<leader><leader>", fzf.files, { desc = "Fzf Files" })
    set("n", "<leader>/", fzf.live_grep_native, { desc = "Fzf Live Grep" })
    require("fzf-lua").setup({
      keymap = {
        builtin = {
          ["<F1>"] = "toggle-help",
          ["<F2>"] = "toggle-fullscreen",
          -- Only valid with the 'builtin' previewer
          ["<F3>"] = "toggle-preview-wrap",
          ["<F4>"] = "toggle-preview",
          ["<F5>"] = "toggle-preview-ccw",
          ["<F6>"] = "toggle-preview-cw",
          ["<C-d>"] = "preview-page-down",
          ["<C-u>"] = "preview-page-up",
          ["<S-left>"] = "preview-page-reset",
        },
        fzf = {
          ["ctrl-z"] = "abort",
          ["ctrl-f"] = "half-page-down",
          ["ctrl-b"] = "half-page-up",
          ["ctrl-a"] = "beginning-of-line",
          ["ctrl-e"] = "end-of-line",
          ["alt-a"] = "toggle-all",
          -- Only valid with fzf previewers (bat/cat/git/etc)
          ["f3"] = "toggle-preview-wrap",
          ["f4"] = "toggle-preview",
          ["ctrl-d"] = "preview-page-down",
          ["ctrl-u"] = "preview-page-up",
          ["ctrl-q"] = "select-all+accept",
        },
        actions = {
          buffer = {
            ["ctrl-|"] = "vsplit",
            ["ctl-_"] = "hsplit",
            ["ctrl-t"] = "tabedit",
          },
          files = {
            ["ctrl-v"] = "vsplit",
            ["ctrl-s"] = "hsplit",
            ["ctrl-t"] = "tabedit",
          },
        },
      },
    })
  end,
}
