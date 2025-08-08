return {
  "Vimjas/vim-python-pep8-indent",
  ft = { "python" }, -- only load for Python files
  init = function()
    -- Recommended to disable smartindent for Python
    vim.g.python_recommended_style = 0
    vim.opt.smartindent = false
    vim.opt.autoindent = true
  end,
}
