require("core.mappings")
require("core.lazy")
require("after.init")
require("after.colours")
vim.opt.clipboard = "unnamedplus"
vim.g.clipboard = {
  name = "win32yank",
  copy = {
    ["+"] = "win32yank.exe -i --crlf",
    ["*"] = "win32yank.exe -i --crlf",
  },
  paste = {
    ["+"] = "win32yank.exe -o --lf",
    ["*"] = "win32yank.exe -o --lf",
  },
  cache_enabled = 0,
}

vim.opt.number = true
vim.opt.relativenumber = true
