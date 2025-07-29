local set = vim.keymap.set
local vscode = require("vscode")

local function action(command, args)
  return function()
    vscode.action(command, args)
  end
end

local function call(command, args)
  return function()
    vscode.call(command, args)
  end
end

-- easy commenting
set("n", "<A-/>", "gcc", { remap = true })
set("v", "<A-/>", "gc", { remap = true })

-- override shift + arrow keys
set("", "<S-Down>", "<Down>")
set("", "<S-Up>", "<Up>")
set("", "<S-Left>", "<Left>")
set("", "<S-Right>", "<Right>")

-- surround
set({ "s", "v" }, '"', 'gsa"', { remap = true })
set({ "s", "v" }, "'", "gsa'", { remap = true })
set({ "s", "v" }, ")", "gsa)", { remap = true })
set({ "s", "v" }, "(", "gsa(", { remap = true })
set({ "s", "v" }, "]", "gsa]", { remap = true })
set({ "s", "v" }, "[", "gsa[", { remap = true })
set({ "s", "v" }, "}", "gsa}", { remap = true })
set({ "s", "v" }, "{", "gsa{", { remap = true })
-- set({ "s", "v" }, ">", "gsa>", { remap = true })
-- set({ "s", "v" }, "<", "gsa<", { remap = true })

-- vertical movement
set({ "n", "i", "v" }, "<C-d>", "20j", { desc = "Move down 20 lines" })
set({ "n", "i", "v" }, "<C-u>", "20k", { desc = "Move up 20 lines" })

-- movement
set({ "n" }, "<Down>", "gj", { remap = true })
set({ "n" }, "<Up>", "gk", { remap = true })

-- moving lines
set("n", "<A-Down>", "<cmd>m .+1<cr>==", { desc = "Move Down", silent = true })
set("n", "<A-Up>", "<cmd>m .-2<cr>==", { desc = "Move Up", silent = true })
set("i", "<A-Down>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down", silent = true })
set("i", "<A-Up>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up", silent = true })
set("v", "<A-Down>", ":m '>+1<cr>gv=gv", { desc = "Move Down", silent = true })
set("v", "<A-Up>", ":m '<-2<cr>gv=gv", { desc = "Move Up", silent = true })

-- move to window using arrow keys
set("n", "<leader><Left>", "<C-w>h", { desc = "Go to Left Window", remap = true })
set("n", "<leader><Down>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
set("n", "<leader><Up>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
set("n", "<leader><Right>", "<C-w>l", { desc = "Go to Right Window", remap = true })

-- explorer
set("n", "\\", call("workbench.view.explorer"))
set("n", "<leader>,", call("workbench.files.action.focusOpenEditorsView"))

-- tabs
set("n", "<Tab>", call("workbench.action.nextEditorInGroup"))
set("n", "<S-Tab>", call("workbench.action.previousEditorInGroup"))
set("n", "<leader>bo", call("workbench.action.closeOtherEditors"))
set("n", "<leader>bp", function()
  local isPinned = vscode.eval("return vscode.window.tabGroups.activeTabGroup.activeTab.isPinned")
  local commandId = isPinned and "workbench.action.unpinEditor" or "workbench.action.pinEditor"
  action(commandId)()
end)
set("n", "<leader>fb", action("workbench.files.action.focusOpenEditorsView"))

-- diagnostics
set("n", "]d", action("editor.action.marker.next"))
set("n", "[d", action("editor.action.marker.previous"))
set("n", "<leader>cd", action("editor.action.marker.next"))

-- git
set("n", "[h", action("editor.action.dirtydiff.previous"))
set("n", "]h", action("editor.action.dirtydiff.next"))
set("n", "<leader>ghp", call("editor.action.dirtydiff.next"))
set("n", "<leader>ghb", call("gitlens.toggleFileBlame"))
set("n", "<leader>ghf", call("git.viewFileHistory"))
set({ "n", "v" }, "<leader>ghr", action("git.revertSelectedRanges"))

-- code
set("n", "<leader>ca", action("editor.action.quickFix"))
set("n", "<leader>cA", action("editor.action.sourceAction"))
set("n", "<leader>cr", action("editor.action.rename"))
set({ "n", "v" }, "<leader>o", action("editor.action.showContextMenu"))
set({ "n" }, "gy", action("editor.action.goToTypeDefinition"))

set("n", "gr", action("editor.action.goToReferences"))
set("n", "gi", action("editor.action.goToImplementation"))

-- find / search
set("n", "<leader>sk", action("workbench.action.openGlobalKeybindings"))
set("n", "<leader>sK", action("workbench.action.openGlobalKeybindingsFile"))
set("n", "<leader>/", action("search.action.openNewEditor"))
set("n", "<leader>.", action("workbench.action.quickOpen"))
set("n", "<leader>,", call("workbench.action.quickOpenPreviousRecentlyUsedEditorInGroup"))
set("n", "<leader>ss", action("workbench.action.showAllSymbols"))

-- restart neovim
set("n", "<leader>rr>", action("vscode-neovim.restart"))

--debugging with notify
set("n", "<leader>zz", function()
  local pinned = vscode.eval("return vscode.window.tabGroups.activeTabGroup.activeTab.isPinned")
  local pin = pinned and "aa unpin" or "aa pin"
  vscode.notify(pin)
end)
