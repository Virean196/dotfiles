return {
  -- Catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true,
    opts = {
      flavour = "mocha",
    },
  },
  -- Tokyo Night
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      style = "night",
    },
  },
  -- Gruvbox Material
  {
    "sainnhe/gruvbox-material",
    lazy = true,
    config = function()
      vim.g.gruvbox_material_background = "medium"
      vim.g.gruvbox_material_foreground = "material"
      vim.g.gruvbox_material_better_performance = 1
      vim.g.gruvbox_material_transparent_background = 2

      vim.api.nvim_create_autocmd("ColorScheme", {
        callback = function()
          vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
          vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        end,
      })
    end,
  },
  -- Kanagawa Dragon
  {
    "rebelot/kanagawa.nvim",
    lazy = true,
    opts = {
      theme = "dragon",
      background = {
        dark = "dragon",
      },
      colors = {
        theme = {
          dragon = {
            ui = {
              bg = "#0d0d0d",
            },
          },
        },
      },
    },
  },
  {
    -- Active theme
    {
      "LazyVim/LazyVim",
      opts = {
        colorscheme = "kanagawa-dragon",
      },
    },
  },
}
