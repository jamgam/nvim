return {
  "ggandor/leap.nvim",
  config = function(_, opts)
    require("leap").set_default_mappings()
  end,
}
