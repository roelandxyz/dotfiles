return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
  },

  -- { "folke/noice.nvim", enabled = false },
  { "akinsho/bufferline.nvim", enabled = false },
  { import = "lazyvim.plugins.extras.linting.eslint" },
  { import = "lazyvim.plugins.extras.formatting.prettier" },
  { "mg979/vim-visual-multi" },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "minimal",
    },
  },

  -- manuel autocomplete (C-space)
  {
    "nvim-cmp",
    opts = function(_, opts)
      opts.completion = {
        autocomplete = false,
      }
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "html",
        "javascript",
        "css",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
      },
    },
  },
}
