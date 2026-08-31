-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Swap the parameter under the cursor with its neighbour (treesitter).
-- Mirrors <A-j>/<A-k> for moving lines, one level down.
local function swap_param(direction)
  return function()
    require("nvim-treesitter-textobjects.swap")["swap_" .. direction]("@parameter.inner")
  end
end

vim.keymap.set("n", "<A-l>", swap_param("next"), { desc = "Swap param right" })
vim.keymap.set("n", "<A-h>", swap_param("previous"), { desc = "Swap param left" })
