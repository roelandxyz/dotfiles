return {
  { "folke/noice.nvim", enabled = false },
  { "akinsho/bufferline.nvim", enabled = false },
  { "lukas-reineke/indent-blankline.nvim", enabled = false },
  -- { import = "lazyvim.plugins.extras.linting.eslint" },
  -- { import = "lazyvim.plugins.extras.formatting.prettier" },
  { "mg979/vim-visual-multi" },

  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    opts = {
      -- custom_highlights = function(colors)
      -- 	return {
      -- 		-- Comment = { fg = colors.flamingo },
      -- 		["@keyword.jsdoc"] = { fg = colors.green },
      -- 		["@comment.documentation.javascript"] = { fg = colors.green },
      -- 		["@punctuation.delimiter.jsdoc"] = { fg = colors.green },
      -- 		["@function.method.call.javascript"] = { fg = colors.text },
      -- 		["@variable.member.javascript"] = { fg = colors.text },
      -- 		["@number.javascript"] = { fg = colors.text },
      -- 		["@boolean.javascript"] = { fg = colors.text },
      -- 		["@function.call.javascript"] = { fg = colors.text },
      -- 		["@string.javascript"] = { fg = colors.rosewater },
      -- 		-- ["@keyword.javascript"] = { fg = colors.subtext1 },
      -- 		["@variable.builtin.javascript"] = { fg = colors.lavender },
      -- 	}
      -- end,
      integrations = {
        aerial = true,
        alpha = true,
        cmp = true,
        dashboard = true,
        flash = true,
        grug_far = true,
        gitsigns = true,
        headlines = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        leap = true,
        lsp_trouble = true,
        mason = true,
        markdown = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        navic = { enabled = true, custom_bg = "lualine" },
        neotest = true,
        neotree = true,
        noice = true,
        notify = true,
        semantic_tokens = true,
        telescope = true,
        treesitter = true,
        treesitter_context = true,
        which_key = true,
      },
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
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

  -- neotest
  {
    "nvim-neotest/neotest",
    dependencies = {
      "marilari88/neotest-vitest",
    },
    opts = {
      adapters = {
        ["neotest-vitest"] = {},
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        denols = {},
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
      },
    },
  },
}
