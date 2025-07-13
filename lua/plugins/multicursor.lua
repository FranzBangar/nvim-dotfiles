return {
  {
    "mg979/vim-visual-multi",
    branch = "master",
    init = function()
      vim.g.VM_default_mappings = 1 -- Enable default key mappings
      vim.g.VM_maps = {
        ["Find Under"] = "<C-n>", -- select next occurrence (like VSCode Ctrl+D)
        ["Find Subword Under"] = "<C-n>",

        ["Select All"] = "<C-Shift-n>", -- select all occurrences
        ["Skip"] = "<C-x>", -- skip current and go to next
        ["Remove Region"] = "<C-p>", -- remove region

        -- You can customize more here if you like
      }
    end,
  },
}
