return {
  "neovim/nvim-lspconfig",
  dependencies = {
    {
      "artemave/workspace-diagnostics.nvim",
      opts = {},
    },
  },
  opts = function(_, opts)
    opts.servers = {
      tsserver = {
        keys = {
          {
            "<leader>ci",
            function()
              vim.lsp.buf.code_action({
                apply = true,
                context = {
                  only = { "source.addMissingImports.ts" },
                  diagnostics = {},
                },
              })
            end,
            desc = "Add Missing Imports",
          },
          {
            "<leader>co",
            function()
              vim.lsp.buf.code_action({
                apply = true,
                context = {
                  only = { "source.organizeImports.ts" },
                  diagnostics = {},
                },
              })
            end,
            desc = "Organize Imports",
          },
          {
            "<leader>cR",
            function()
              vim.lsp.buf.code_action({
                apply = true,
                context = {
                  only = { "source.removeUnused.ts" },
                  diagnostics = {},
                },
              })
            end,
            desc = "Remove Unused Imports",
          },
        },
      },
    }
    LazyVim.lsp.on_attach(function(client, buffer)
      require("workspace-diagnostics").populate_workspace_diagnostics(client, buffer)
    end)
  end,
}
