return {
  {
    "dmmulroy/tsc.nvim",
    auto_open_qflist = true,
    opts = {
      auto_close_qflist = false,
      enable_progress_notifications = false, -- disable notification
      -- support monorepo
      flags = {
        build = true,
      },
    },
    keys = {
      { "<leader>xk", "<cmd>TSC<CR>", desc = "Check TypeScript error" },
    },
  },
}
