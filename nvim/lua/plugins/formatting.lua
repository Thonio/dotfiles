return {
  {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      formatters_by_ft = {
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        svelte = { "prettier" },
        css = { "prettier" },
        html = { "prettier" },
        json = { "prettier" },
        yaml = { "prettier" },
        markdown = { "prettier" },
        graphql = { "prettier" },
        lua = { "stylua" },
        python = { "isort", "black" },
      },
      format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 500,
      },
    },
    keys = {
      {
        "<leader>mp",
        function()
          require("conform").format({
            lsp_fallback = true,
            async = false,
            timeout_ms = 500,
          })
        end,
        mode = { "n", "v" },
        desc = "Format file or range",
      },
    },
  },
  {
    "mason.nvim",
    opts = {
      ensure_installed = {
        "prettier",
        "black",
        "isort",
      },
    },
  },
}
