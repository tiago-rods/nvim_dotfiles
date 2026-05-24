return {
  "neanias/everforest-nvim",
  lazy = false,
  priority = 1000,
  config = function()
  --   Customizações opcionais (descomente e ajuste conforme necessário)
     require("everforest").setup({
       transparent_background_level = 1, -- 0 a 3
       background = "soft", -- "soft", "medium", "hard"
       disable_italic_comment = false,
       on_highlights = function(highlights, palette) end
     })
    vim.cmd("colorscheme everforest")
  end,
}
