local M = {}

function M.action(action)
  vim.lsp.buf.code_action({
    apply = true,
    context = {
      only = { action },
      diagnostics = {},
    },
  })
end

function M.add_midding_imports()
  M.action("source.addMissingImports.ts")
end

function M.organize_imports()
  M.action("source.organizeImports.ts")
end

function M.remove_unused_imports()
  M.action("source.removeUnused.ts")
end

function M.fix_all()
  M.action("source.fixAll.ts")
end

function M.sort_imports()
  M.action("source.sortImports.ts")
end

function M.remove_unused()
  M.action("source.removeUnused.ts")
end

function M.all()
  M.action("")
end

return M
