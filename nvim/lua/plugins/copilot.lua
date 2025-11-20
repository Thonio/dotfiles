-- Configuration Copilot

return {
  {
    "zbirenbaum/copilot.lua",
    event = "InsertEnter",
    module = "copilot",
    config = function()
      require("copilot").setup({
        suggestion = { enabled = true },
        panel = { enabled = false },
      })
    end,
  },
}
