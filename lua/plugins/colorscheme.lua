return {
  {
    "rebelot/kanagawa.nvim", -- https://github.com/rebelot/kanagawa.nvim
    lazy = false,
    priority = 1000, -- Load before other plugins
    config = function()
      require("kanagawa").setup({
        -- optional custom settings
      })
      vim.cmd("colorscheme kanagawa-dragon")
    end,
  },
}
