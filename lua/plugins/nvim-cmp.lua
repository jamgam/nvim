return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "zbirenbaum/copilot.lua",
    "yochem/cmp-htmx",
  },
  opts = function(_, opts)
    local cmp = require("cmp")
    local copilot = require("copilot.suggestion")

    opts.mapping = vim.tbl_extend("force", opts.mapping, {
      ["<C-Y>"] = cmp.mapping(function(fallback)
        if copilot.is_visible() then
          copilot.accept()
        else
          fallback()
        end
      end, { "i", "s" }),
    })

    opts.experimental = {
      ghost_text = false,
    }
    table.insert(opts.sources, {
      name = "cmp-htmx",
    })
  end,
}
