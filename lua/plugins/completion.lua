-- Create a local variable to check if Copilot is enabled
local isCopilotEnabled = vim.env.ENABLE_COPILOT == "1"

return {
  -- Copilot configuration
  {
    "zbirenbaum/copilot.lua",
    enabled = isCopilotEnabled,
    build = ":Copilot",
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true,
        keymap = {
          accept = "<C-y>",
        },
      },
      filetypes = {
        markdown = true,
        help = true,
      },
    },
  },

  -- Blink.cmp configuration
  {
    "saghen/blink.cmp",
    opts = function(_, opts)
      opts.keymap = {
        ["<C-Y>"] = {
          function(fallback)
            if isCopilotEnabled then
              -- Only try to use copilot if it's enabled
              local ok, copilot = pcall(require, "copilot.suggestion")
              if ok and copilot.is_visible() then
                copilot.accept()
                return
              end
            end
            fallback()
          end,
        },
        ["<Tab>"] = {},
        ["<CR>"] = { "accept", "fallback" },
      }

      opts.completion = {
        ghost_text = { enabled = false },
      }
    end,
  },
}
