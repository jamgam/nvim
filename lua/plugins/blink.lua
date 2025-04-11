return {
  "saghen/blink.cmp",
  opts = function(_, opts)
    local copilot = require("copilot.suggestion")

    opts.keymap = {
      ["<C-Y>"] = {
        function(fallback)
          if copilot.is_visible() then
            copilot.accept()
          else
            fallback()
          end
        end,
      },
      ["<Tab>"] = {},
      ["<CR>"] = { "accept", "fallback" },
    }

    opts.completion = {
      ghost_text = { enabled = false },
    }
  end,
}
