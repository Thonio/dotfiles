-- Configuration lspsaga

return {
  "nvimdev/lspsaga.nvim",
  after = "nvim-lspconfig",
  config = function()
    require("lspsaga").setup({
      ui = {
        winblend = 10,
        border = "rounded",
      },
    })

    local diagnostic = require("lspsaga.diagnostic")
  end,
}
