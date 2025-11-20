-- Configuration for GitHub Copilot Chat in Neovim

return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      "zbirenbaum/copilot.lua",
      { "nvim-lua/plenary.nvim", branch = "master" },
    },
    build = "make tiktoken",
    cmd = "CopilotChat",
    opts = {
      window = {
        layout = "float",
        width = 0.6,
        height = 0.7,
      },
    },
    keys = {
      { "<leader>cc", "<cmd>CopilotChat<CR>", desc = "Ouvrir Copilot Chat" },
    },
  },
}
