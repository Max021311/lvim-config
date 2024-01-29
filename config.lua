local LUNARVIM_CONFIG_DIR = os.getenv('LUNARVIM_CONFIG_DIR')
package.path = package.path .. ';' .. LUNARVIM_CONFIG_DIR .. '/?.lua'
local LUAROCK_JIT_PATH = os.getenv'LUAROCK_JIT_PATH'
if LUAROCK_JIT_PATH ~= nil and #LUAROCK_JIT_PATH > 0 then
  package.path = package.path .. ';' .. LUAROCK_JIT_PATH
end
local LUAROCK_JIT_CPATH = os.getenv'LUAROCK_JIT_CPATH'
if LUAROCK_JIT_CPATH ~= nil and #LUAROCK_JIT_CPATH > 0 then
  package.path = package.path .. ';' .. LUAROCK_JIT_CPATH
end

-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
lvim.colorscheme = 'tokyonight-night'
-- lvim.colorscheme = 'flesh-and-blood'

local null_ls = require('null-ls')
lvim.lsp.null_ls.setup = {
  sources = {
    null_ls.builtins.diagnostics.eslint
  }
}

lvim.lazy.opts.dev = {
  path = '~/projects/lua/nvim',
  fallback = false
}
lvim.builtin.indentlines.options.show_trailing_blankline_indent = true

vim.opt.foldmethod = 'expr'
vim.opt.foldlevel = 10
vim.cmd'set foldexpr=nvim_treesitter#foldexpr()'

vim.opt.relativenumber = true

vim.opt.list = true
-- vim.opt.listchars:append "space:·"
vim.opt.listchars:append "extends:›"
vim.opt.listchars:append "precedes:‹"
vim.opt.listchars:append "eol:↴"
vim.opt.listchars:append "tab:>·"

vim.g.markdown_fenced_languages = {'javascript', 'typescript', 'sh'}

vim.api.nvim_create_user_command("NvimConfig", ":e ~/.config/lvim/config.lua", {})

if vim.g.neovide then
  vim.g.neovide_hide_mouse_when_typing = true
  vim.g.neovide_refresh_rate = 60
  vim.g.neovide_fullscreen = false
  vim.g.neovide_confirm_quit = true
  vim.g.neovide_cursor_vfx_mode = "railgun"
  vim.g.neovide_transparency = 0.8
  vim.o.guifont = "FiraCode Nerd Font"
end

require('user.plugins')
require('user.mappings')

