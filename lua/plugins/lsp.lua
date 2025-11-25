return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- Here you can define or override servers
      servers = {
        pyright = {
          -- Optionally customize Pyright settings if needed
        },

        ruff = {
          on_attach = function(client, _)
            -- Disable hover from Ruff so Pyright handles it
            client.server_capabilities.hoverProvider = false
          end,
          init_options = {
            settings = {
              args = {}, -- Ruff will pick up your pyproject.toml automatically
            },
          },
        },
      },

      -- Optionally: setup auto-format on save
      setup = {
        -- Enable Ruff as a formatter when it attaches
        vim.api.nvim_create_autocmd("LspAttach", {
          group = vim.api.nvim_create_augroup("UserLspAttach", { clear = false }),
          callback = function(args)
            local client = vim.lsp.get_client_by_id(args.data.client_id)
            if not client then
              return
            end
            if client.name == "ruff_lsp" then
              client.server_capabilities.documentFormattingProvider = true
            end
          end,
        }),
      },
    },
  },
}
