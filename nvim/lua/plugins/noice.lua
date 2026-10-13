-- Hide pyright progress notifications ("pyright ✓" on every change)

return {
  "folke/noice.nvim",
  opts = function(_, opts)
    opts.routes = opts.routes or {}
    table.insert(opts.routes, {
      filter = {
        event = "lsp",
        kind = "progress",
        cond = function(msg)
          local client = vim.tbl_get(msg.opts, "progress", "client")
          return client == "pyright" or client == "basedpyright"
        end,
      },
      opts = { skip = true },
    })
  end,
}
