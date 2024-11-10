return {
  { "folke/noice.nvim", enabled = true },

  -- no 'tabs'
  { "akinsho/bufferline.nvim", enabled = false },

  {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      require("onedark").setup({
        style = "dark",
        colors = {
          --comment = "#5c6370",
          comment = "#6b7280", -- a bit more contrast for comments
        },
        highlights = {
          ["@comment"] = { fg = "$comment" },
          ["@comment.go"] = { fg = "$comment" },
          ["@lsp.type.comment.lua"] = { fg = "$comment" },
          ["@comment.documentation.javascript"] = { fg = "$comment" },
          ["@comment.documentation.lua"] = { fg = "$comment" },
        },
      })
      vim.cmd.colorscheme("onedark")
    end,
  },

  --  no indent guides
  -- { "lukas-reineke/indent-blankline.nvim", enabled = false },
  -- { "mg979/vim-visual-multi" },
  --
  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     -- colorscheme = "quiet",
  --     colorscheme = "minimal",
  --   },
  -- },

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
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        theme = "onedark",
      },
    },
  },

  -- Sort files by modified date
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
}
