if true then
  return {}
end
return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      htmx = { filetypes_includes = { "templ" } },
      html = { filetypes_includes = { "templ" } },
      tailwindcss = {
        filetypes_includes = { "templ" },
        settings = {
          tailwindCSS = {
            includeLanguages = {
              templ = "html",
            },
          },
        },
      },
    },
  },
}
