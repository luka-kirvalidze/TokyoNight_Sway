local theme = require("theme")

local function enable_transparency()
  local groups = { "Normal", "NormalNC", "NormalFloat", "SignColumn" }
  for _, group in ipairs(groups) do
    vim.api.nvim_set_hl(0, group, { bg = "none" })
  end
end

return {
  {
    theme.plugin_name,
    lazy = false,
    priority = 1000,
    opts = theme.opts,
    config = function(_, opts)
      require(theme.setup_module or theme.plugin_name:match("([^/]+)$")).setup(opts)
      vim.cmd.colorscheme(theme.colorscheme)

      local is_transparent = theme.opts.transparent == true
        or (type(theme.opts.transparent) == "table" and theme.opts.transparent.bg)

      if is_transparent then
        enable_transparency()
      end
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      theme = theme.lualine_theme,
    },
  },
}
