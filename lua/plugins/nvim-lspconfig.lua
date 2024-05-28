local ts_actions = require("util.tsserver")
return {
  "neovim/nvim-lspconfig",
  dependencies = {
    {
      "artemave/workspace-diagnostics.nvim",
      opts = {},
    },
  },
  ---@class PluginLspOpts
  opts = {
    servers = {
      vtsls = {
        keys = {
          {
            "<leader>ci",
            function()
              ts_actions.add_midding_imports()
            end,
            desc = "Add Missing [i]mports",
          },
          {
            "<leader>co",
            function()
              ts_actions.action("source.organizeImports")
            end,
            desc = "[O]rganize Imports",
          },
          {
            "<leader>cR",
            function()
              ts_actions.remove_unused_imports()
            end,
            desc = "Remove Unused Imports",
          },
          {
            "<leader>c,",
            function()
              ts_actions.action("source.fixAll")
            end,
            desc = "Fix All",
          },
          {
            "<leader>c.m",
            function()
              ts_actions.action("refactor.move")
            end,
            desc = "All",
          },
          {
            "<leader>c.e",
            function()
              ts_actions.action("refactor.extract")
            end,
            desc = "All",
          },
          {
            "<leader>c.r",
            function()
              ts_actions.action("refactor.rewrite.arrow.braces")
            end,
            desc = "All",
          },
        },

        on_attach = function(client, buffer)
          require("workspace-diagnostics").populate_workspace_diagnostics(client, buffer)
        end,
        settings = {
          autoUseWorkspaceTsdk = true,
          experimental = {
            completion = {
              enableServerSideFuzzyMatch = true,
            },
          },
          javascript = {
            inlayHints = {
              parameterNames = { enabled = "literals" },
              parameterTypes = { enabled = true },
              variableTypes = { enabled = true },
              propertyDeclarationTypes = { enabled = true },
              functionLikeReturnTypes = { enabled = true },
              enumMemberValues = { enabled = true },
            },
            updateImportsOnFileMove = {
              enabled = "always",
            },
          },
          typescript = {
            suggest = {
              completeFunctionCalls = true,
              includeAutomaticOptionalChainCompletions = true,
            },
            implementationsCodeLens = {
              showOnInterfaceMethods = true,
              enabled = true,
            },
            referencesCodeLens = {
              showOnAllFunctions = true,
              enabled = true,
            },
            inlayHints = {
              parameterNames = { enabled = "literals" },
              parameterTypes = { enabled = true },
              variableTypes = { enabled = true },
              propertyDeclarationTypes = { enabled = true },
              functionLikeReturnTypes = { enabled = true },
              enumMemberValues = { enabled = true },
            },
            updateImportsOnFileMove = {
              enabled = "always",
            },
          },
        },
      },
    },
    setup = {
      vtsls = function(_, opts)
        require("workspace-diagnostics").setup({})
      end,
    },
  },
}
