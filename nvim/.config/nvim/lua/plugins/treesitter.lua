return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      highlight = { enable = true },
      indent = { enable = true },
      autotag = { enable = true },
      ensure_installed = {
        "lua",
        "vim",
        "vimdoc",
        "query",
        "tsx",
        "typescript",
        "php",
        "python",
      },
      auto_install = false,
    })
  end,
}
