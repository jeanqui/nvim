return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  "vim-syntastic/syntastic",
  "nvie/vim-flake8",
  {
    "github/copilot.vim",
    event = "InsertEnter",
    autoStart = true,
    lazy = false,
  },
}
