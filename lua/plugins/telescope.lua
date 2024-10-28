-- if true then
--   return {}
-- end
local builtin = require("telescope.builtin")
return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
    config = function()
      require("telescope").load_extension("fzf")
    end,
  },
  -- keys = {
  -- { "<leader>ff", false },
  -- { "<leader>fg", false },
  -- { "<leader>ff", false },
  -- { "<leader>fF", false },
  -- { "<leader>fR", false },
  -- { "<leader>fr", false },
  -- { "<leader><leader>", false },
  -- { "<leader>/", false },
  -- { "<leader>sf", builtin.find_files, { desc = "Search Files" } },
  -- { "<leader>sp", builtin.builtin, { desc = "Search Pickers" } },
  -- { "<leader>ss", builtin.lsp_dynamic_workspace_symbols, { desc = "Search Workspace Symbols" } },
  -- { "<ledaer>sS", builtin.lsp_document_symbols, { desc = "Search Docment Symbols" } },
  -- },
  opts = {
    defaults = {
      path_display = { "filename_first" },
      layout_strategy = "horizontal",
      sorting_strategy = "ascending",
      layout_config = {
        prompt_position = "top",
        horizontal = {
          preview_width = 0.6,
        },
      },
      fzf = {
        fuzzy = true,
        override_generic_sorter = true,
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
