vim.diagnostic.config({ virtual_lines = { only_current_line = true } })

return {
  "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
  event = "LspAttach",
  keys = {
    {
      "<leader>uD",
      function()
        vim.diagnostic.config({
          virtual_text = not require("lsp_lines").toggle(),
        })
      end,
      desc = "Toggle virtual diagnostic lines",
    },
  },
  opts = {},
  enabled = false,
}
