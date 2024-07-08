return {
  "datsfilipe/min-theme.nvim",
  name = "min-theme",
  lazy = false,
  priority = 1000,
  config = function()
    -- Optionally configure and load the colorscheme
    -- directly inside the plugin declaration.
    vim.cmd.colorscheme("min-theme")
  end,
}
