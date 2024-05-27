return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({
      highlight = { enable = true },
      indent = { enable = true },
      autotag = { enable = true },

      -- Install these languages parsers automatically
      ensure_installed = {
        "arduino",
        "asm",
        "bash",
        "bibtex",
        "c",
        "cmake",
        "cpp",
        "css",
        "csv",
        "dockerfile",
        "glsl",
        "go",
        "graphql",
        "json",
        "javascript",
        "typescript",
        "tsx",
        "yaml",
        "html",
        "markdown",
        "markdown_inline",
        "lua",
        "vim",
        "gitignore",
        "vimdoc"
      },

      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })
  end
}
