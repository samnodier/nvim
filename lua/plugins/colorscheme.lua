return {
  {
    "navarasu/onedark.nvim",
    priority = 1000, -- Load before other plugins
    config = function()
      require("onedark").setup {
        style = "darker",
      }
      require("onedark").load()
    end,
  },
}
