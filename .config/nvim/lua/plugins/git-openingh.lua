local prefix = "<leader>gg"
return {
  "almo7aya/openingh.nvim",
  cmd = { "OpenInGHRepo", "OpenInGHFile", "OpenInGHFileLines" },
  keys = {
    { prefix .. "o", "<cmd>OpenInGHRepo<CR>", desc = "Open git repo in web", mode = { "n" } },
    { prefix .. "O", "<cmd>OpenInGHRepo+<CR>", desc = "Copy git repo url", mode = { "n" } },
    { prefix .. "l", "<cmd>OpenInGHFile<CR>", desc = "Open git file in web", mode = { "n" } },
    { prefix .. "L", "<cmd>OpenInGHFile+<CR>", desc = "Copy git file url", mode = { "n" } },
    { prefix .. "l", "<cmd>OpenInGHFileLines<CR>", desc = "Open git lines in web", mode = { "x" } },
    { prefix .. "L", "<cmd>OpenInGHFileLines+<CR>", desc = "Copy git lines url", mode = { "x" } },
  },
}
