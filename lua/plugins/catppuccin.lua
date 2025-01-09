return {
  {
    "catppuccin/nvim",
    config = function()
      require("catppuccin").setup({
        flavour = "auto",
        background = {
          light = "latte",
          dark = "macchiato",
        },
        transparent_background = true,
        dim_inactive = {
          enabled = true,
          shade = "dark",
          percentage = 0.2,
        },
        no_italic = true,
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
