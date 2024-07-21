return {
  "zbirenbaum/copilot.lua",
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
}
