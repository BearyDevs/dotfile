-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Util = require("lazyvim.util")
local keymap = vim.keymap
local opts = { noremap = true, silent = true, nowait = true }

local function show_relative_path()
  local relative_path = vim.fn.expand("%")
  print("Relative Path: " .. relative_path)
end

local function show_project_path()
  local project_path = vim.fn.systemlist("git rev-parse --show-toplevel")[1]
  if vim.v.shell_error ~= 0 then
    project_path = vim.fn.getcwd()
  end
  print("Project Path: " .. project_path)
end

-- override default
keymap.set("n", "<leader>|", "", opts) -- disable Vertical split
keymap.set("n", "<leader>-", "", opts) -- disable Horizontal split
keymap.set("n", ";", ":", { noremap = true, nowait = true })
keymap.set("n", "q", "", opts) -- disable record macro

keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sl", "<C-w>l")

keymap.set("n", "<leader>$", function()
  return show_relative_path()
end, { desc = "Show Relative Path" })
keymap.set("n", "<leader>%", function()
  return show_project_path()
end, { desc = "Show Relative th" })
keymap.set("n", "Dw", "vb_d", opts) -- delete word backward
keymap.set("n", "<C-a>", "gg<S-v>G", opts) -- select all
keymap.set("n", "mk", "<cmd>m-2<cr>", opts) -- move line up
keymap.set("n", "mj", "<cmd>m+1<cr>", opts) -- move line down
keymap.set("n", "+", "<cmd>vertical resize +1<cr>", opts)
keymap.set("n", "_", "<cmd>vertical resize -1<cr>", opts)
keymap.set("n", ")", "<cmd>horizontal resize +1<cr>", opts)
keymap.set("n", "(", "<cmd>horizontal resize -1<cr>", opts)
keymap.set("n", "x", '"_x', opts)
keymap.set("n", "c", '"_c', opts)
keymap.set("v", "c", '"_c', opts)
keymap.set("n", "X", '"_X', opts)
keymap.set("n", "C", '"_C', opts)
keymap.set("v", "C", '"_C', opts)
keymap.set("i", "jk", "<ESC>", opts) -- Quick exit insert mode
keymap.set("n", "<leader>v", "<cmd>:vsplit<cr>", { desc = "Vertical Split" })
keymap.set("n", "<leader>V", "<cmd>:split<cr>", { desc = "Horizontal Split" })

-- ╭─────────────────────────────────────────────────────────╮
-- │ Delete Buffer                                           │
-- ╰─────────────────────────────────────────────────────────╯
-- keymap.set("n", "<leader>h", function()
--   local bd = require("mini.bufremove").delete
--   if vim.bo.modified then
--     local choice = vim.fn.confirm(("Save changes to %q?"):format(vim.fn.bufname()), "&Yes\n&No\n&Cancel")
--     if choice == 1 then -- Yes
--
--  -- Mini
--       vim.cmd.write()
--       bd(0)
--     elseif choice == 2 then -- No
--       bd(0, true)
--     end
--   else
--     bd(0)
--   end
-- end, { desc = "Delete Buffer" })
keymap.set("n", "<leader>h", LazyVim.ui.bufremove, { desc = "Delete Buffer" })
keymap.set("n", "<leader>H", "<cmd>:bd<cr>", { desc = "Delete Buffer and Window" })

-- ╭─────────────────────────────────────────────────────────╮
-- │ Neo-tree jump to current file                           │
-- ╰─────────────────────────────────────────────────────────╯
keymap.set("n", "<leader>o", function()
  if vim.bo.filetype == "neo-tree" then
    vim.cmd.wincmd("p")
  else
    vim.cmd.Neotree("focus")
  end
end, { desc = "Toggle Explorer Focus" })

keymap.set("n", "<leader>fw", function()
  require("telescope.builtin").live_grep()
end, { desc = "Find words" })
keymap.set("n", "<leader>fW", function()
  require("telescope.builtin").live_grep({
    additional_args = function(args)
      return vim.list_extend(args, { "--hidden", "--no-ignore" })
    end,
  })
end, { desc = "Find words in all files" })

keymap.set("n", "<leader>fk", function()
  require("telescope.builtin").keymaps()
end, { desc = "Find keymaps" })

keymap.set("n", "<leader>fo", function()
  require("telescope.builtin").oldfiles()
end, { desc = "Find historys" })
--
-- Diagnostics
keymap.set("n", "gl", function()
  vim.diagnostic.open_float()
end, { desc = "Show diagnostics hover" })

keymap.set("n", "gj", function()
  vim.diagnostic.goto_next()
end, { desc = "Go to next diagnostic" })

keymap.set("n", "gk", function()
  vim.diagnostic.goto_prev()
end, { desc = "Go to previous diagnostic" })

keymap.set(
  "n",
  "<leader>?",
  "<cmd> Telescope current_buffer_fuzzy_find <CR>",
  { desc = "Fuzzy find in current buffer" }
)

keymap.set("n", "<leader>\\", "<cmd>LazyExtras<CR>", { desc = "LazyExtras" })
keymap.set("n", "<leader>S", "<cmd>StartupTime<CR>", { desc = "StartupTime" })
keymap.set("n", "<leader>U", "<cmd>UndotreeToggle<CR>", { desc = "UndotreeToggle" })
keymap.set({ "n", "v" }, "gm", function()
  Util.format({ force = true })
end, { desc = "Format" })

-- ╭─────────────────────────────────────────────────────────╮
-- │ keymap of dial-nvim from LazyExtras                     │
-- ╰─────────────────────────────────────────────────────────╯
--     { "<C-a>", function() return M.dial(true) end, expr = true, desc = "Increment", mode = {"n", "v"} },
--     { "<C-x>", function() return M.dial(false) end, expr = true, desc = "Decrement", mode = {"n", "v"} },
--     { "g<C-a>", function() return M.dial(true, true) end, expr = true, desc = "Increment", mode = {"n", "v"} },
--     { "g<C-x>", function() return M.dial(false, true) end, expr = true, desc = "Decrement", mode = {"n", "v"} },
