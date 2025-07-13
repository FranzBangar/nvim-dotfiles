return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "nvim-neotest/neotest-python",
    },
    config = function()
      local neotest = require("neotest")

      neotest.setup({
        adapters = {
          require("neotest-python")({
            -- Example: enable pytest, you can customize
            dap = { justMyCode = false },
            args = {},
            runner = "unittest", -- can also be "unittest" if you prefer
          }),
        },
      })

      -- Keymaps
      --local map = vim.keymap.set
      --map("n", "<leader>tt", function() neotest.run.run() end, { desc = "Run nearest test" })
      --map("n", "<leader>tf", function() neotest.run.run(vim.fn.expand("%")) end, { desc = "Run all tests in file" })
      --map("n", "<leader>ta", function() neotest.run.run(vim.loop.cwd()) end, { desc = "Run all tests in project" })
      --map("n", "<leader>to", function() neotest.output.open({ enter = true, auto_close = true }) end, { desc = "Show test output" })
      --map("n", "<leader>ts", function() neotest.summary.toggle() end, { desc = "Toggle test summary panel" })
      --map("n", "<leader>tl", function() neotest.run.run_last() end, { desc = "Run last test" })
    end,
  },
}
