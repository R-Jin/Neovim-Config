return {
  "lukas-reineke/indent-blankline.nvim",
  event = { "BufReadPre", "BufNewFile" },
  main = "ibl",
  opts = {
    scope = {
      enabled = true,
      show_start = true,
      show_end = false,
      highlight = "IndentBlanklineContextChar",
    }
  }
}
