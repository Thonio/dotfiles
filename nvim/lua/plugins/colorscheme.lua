return {
  "f4z3r/gruvbox-material.nvim",
  name = "gruvbox-material",
  lazy = false,
  priority = 1000,
  opts = {
    background = {
      transparent = true,
    },
    contrast = "medium",
    float = {
      force_background = false,
    },
    signs = {
      force_background = false,
    },
  },
  config = function(_, opts)
    require("gruvbox-material").setup(opts)
    vim.cmd.colorscheme("gruvbox-material")

    local transparent_groups = {
      "Normal",
      "NormalNC",
      "NormalFloat",
      "FloatBorder",
      "SignColumn",
      "EndOfBuffer",
    }

    local function apply_transparency()
      for _, group in ipairs(transparent_groups) do
        vim.api.nvim_set_hl(0, group, { bg = "none" })
      end
    end

    apply_transparency()
    vim.api.nvim_create_autocmd("ColorScheme", {
      pattern = "gruvbox-material",
      callback = apply_transparency,
    })
  end,
}
