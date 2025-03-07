local colorscheme = require("lazyvim.plugins.colorscheme")
return {
  { "sainnhe/everforest" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "everforest",
    },
  },
}
