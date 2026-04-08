return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function()
      local group = vim.api.nvim_create_augroup("angular_html_templates", { clear = true })

      vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile" }, {
        group = group,
        pattern = "*.html",
        callback = function(args)
          local buf = args.buf
          local name = vim.api.nvim_buf_get_name(buf)
          if name == "" then
            return
          end

          local root = vim.fs.root(name, { "angular.json", "nx.json" })
          if not root then
            return
          end

          if vim.bo[buf].filetype ~= "htmlangular" then
            vim.bo[buf].filetype = "htmlangular"
          end

          vim.treesitter.start(buf, "angular")
        end,
      })
    end,
  },
}
