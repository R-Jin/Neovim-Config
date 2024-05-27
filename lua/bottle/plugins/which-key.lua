return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 200 -- Delay which-key with 500ms
  end,
  opts = {
    -- your configuration comes here
    -- or if empty use default settings
  },
}
