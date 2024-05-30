local default = require("lazyvim.config").get_kind_filter()

return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
    config = function()
      require("telescope").load_extension("fzf")
    end,
  },
  opts = {
    defaults = {
      path_display = { "filename_first" },
      layout_strategy = "vertical",
      sorting_strategy = "ascending",
      layout_config = {
        vertical = {
          align = "right",
          prompt_position = "top",
          mirror = true,
          preview_height = 0.7,
        },
      },
    },
  },
}

-- kinds
--
-- Array         = " "
-- ,
-- Boolean       = "󰨙 ",
-- Class         = " ",
-- Codeium       = "󰘦 ",
-- Color         = " ",
-- Control       = " ",
-- Collapsed     = " ",
-- Constant      = "󰏿 ",
-- Constructor   = " ",
-- Copilot       = " ",
-- Enum          = " ",
-- EnumMember    = " ",
-- Event         = " ",
-- Field         = " ",
-- File          = " ",
-- Folder        = " ",
-- Function      = "󰊕 ",
-- Interface     = " ",
-- Key           = " ",
-- Keyword       = " ",
-- Method        = "󰊕 ",
-- Module        = " ",
-- Namespace     = "󰦮 ",
-- Null          = " ",
-- Number        = "󰎠 ",
-- Object        = " ",
-- Operator      = " ",
-- Package       = " ",
-- Property      = " ",
-- Reference     = " ",
-- Snippet       = " ",
-- String        = " ",
-- Struct        = "󰆼 ",
-- TabNine       = "󰏚 ",
-- Text          = " ",
-- TypeParameter = " ",
-- Unit          = " ",
-- Value         = " ",
-- Variable      = "󰀫 ",
