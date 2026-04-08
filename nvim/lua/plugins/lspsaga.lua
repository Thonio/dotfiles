-- Configuration lspsaga

return {
  "nvimdev/lspsaga.nvim",
  event = "LspAttach",
  opts = {
    ui = {
      winblend = 10,
      border = "rounded",
    },
  },
}
