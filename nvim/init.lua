require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.autocommands"
require "user.colorscheme"
require "user.cmp"
require "user.telescope"
require "user.gitsigns"
require "user.treesitter"
require "user.autopairs"
require "user.comment"
require "user.nvim-tree"
require "user.bufferline"
require "user.lualine"
require "user.toggleterm"
require "user.project"
require "user.impatient"
require "user.illuminate"
require "user.indentline"
require "user.alpha"
require "user.lsp"
-- require "user.dap"
require "user.whichKey"
require "user.typescript"
require "user.tabout"
require("scope").setup()
require "user.colorizer"
require ("user.command-completion").setup()
vim.cmd(":highlight Normal guibg=none ctermbg=none")
vim.cmd(":highlight LineNr guibg=neno ctermbg=none")
vim.cmd(":highlight Folded guibg=none ctermbg=none")
vim.cmd(":highlight NonText guibg=none ctermbg=none")
vim.cmd(":highlight SpecialKey guibg=none ctermbg=none")
vim.cmd(":highlight VertSplit guibg=none ctermbg=none")
vim.cmd(":highlight SignColumn guibg=none ctermbg=none")
vim.cmd(":highlight EndOfBuffer guibg=none ctermbg=none")
-- vim.cmd(":COQnow --shut-up")
-- vim.lsp.set_log_level("debug")
