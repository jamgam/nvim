local default = require("lazyvim.config").get_kind_filter()

local ts_symbols = {
  "Class",
  "Constructor",
  "Enum",
  "Field",
  "Function",
  "Interface",
  "Method",
  "Module",
  "Namespace",
  "Package",
  "Property",
  "Struct",
  "Trait",
  "Constant",
  "Type",
}

local get_symbols = function()
  local fileType = vim.bo[vim.api.nvim_get_current_buf()].filetype
  if fileType == "typescript" then
    return ts_symbols
  end
  return default
end

return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
    config = function()
      require("telescope").load_extension("fzf")
    end,
  },
  keys = {
    {
      "<leader>s.",
      function()
        require("telescope.builtin").lsp_workspace_symbols()
      end,
      desc = "Goto Symbol (Workspace)",
    },
    {
      "<leader>.",
      function()
        require("telescope.builtin").lsp_dynamic_workspace_symbols()
      end,
      desc = "Goto Symbol (Workspace)",
    },
    {
      "<leader>sS",
      function()
        require("telescope.builtin").lsp_dynamic_workspace_symbols({
          symbols = get_symbols(),
        })
      end,
      desc = "Goto Filtered Symbol (Workspace)",
    },
    {
      "<leader>ss",
      function()
        require("telescope.builtin").lsp_document_symbols()
      end,
      desc = "Search Document Symbols",
    },
  },
}

-- kinds
--
-- Array         = " ",
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
