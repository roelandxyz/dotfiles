return {
  { "folke/noice.nvim", enabled = false },
  { "akinsho/bufferline.nvim", enabled = false },
  { "lukas-reineke/indent-blankline.nvim", enabled = false },
  { "mg979/vim-visual-multi" },

  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "quiet",
      -- colorscheme = "tokyonight",
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
    "nvim-telescope/telescope.nvim",
    opts = {

      pickers = {
        find_files = {
          find_command = { "rg", "--files", "--color", "never", "-g", "!.git", "--sortr=modified" },
          hidden = true,
        },
      },
    },
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
        "go",
      },
    },
  },
}
