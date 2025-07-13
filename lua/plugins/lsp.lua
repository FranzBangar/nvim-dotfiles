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
        ruff = function(_, opts)
          -- Force Ruff to also handle formatting if you want
          -- Uncomment below if you want format on save via Ruff
          require("lazyvim.util").lsp.on_attach(function(client, bufnr)
            if client.name == "ruff_lsp" then
              client.server_capabilities.documentFormattingProvider = true
            end
          end)
          return false
        end,
      },
    },
  },
}

