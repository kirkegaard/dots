return {
  "EdenEast/nightfox.nvim",
  priority = 1000,
  init = function()
    vim.cmd("colorscheme nightfox")
  end,
  config = function()
    require("nightfox").setup({
      options = {
        transparent = true,
        terminal_colors = true,
        dim_inactive = false,
      },
      groups = {
        all = {
          VertSplit = { fg = "bg3" },
          CursorLine = { bg = "bg1" },
        },
      },
    })
  end,
}
