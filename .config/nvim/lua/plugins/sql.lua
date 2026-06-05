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
        sqlls = {
          settings = {
            sqlLanguageServer = {
              -- tells sqlls to default to mysql dialect
              driver = "mysql",
            },
          },
        },
      },
    },
  },
}
