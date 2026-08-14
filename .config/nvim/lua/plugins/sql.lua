return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "sql" },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        sqls = {
          connections = {
            {
              driver = "mysql",
            },
          },
        },
      },
      setup = {
        sqls = function(_, opts)
          opts.on_attach = function(client, _)
            client.server_capabilities.documentFormattingProvider = false
            client.server_capabilities.documentRangeFormattingProvider = false
          end
        end,
      },
    },
  },
}
