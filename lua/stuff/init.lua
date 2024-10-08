require("stuff.remap")
require("stuff.set")
require("stuff.packer")

vim.cmd[[colorscheme carbonfox]]

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

require 'nvim-treesitter.install'.compilers = { "clang" }

