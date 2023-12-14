--Plugin manager = lazy.nvim

--vim.g.loaded_netrw = 1
--vim.g.loaded_netrwPlugin = 1

--vim.opt.termguicolors = true
--
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("jconf.remap")
require("jconf.set")
require("jconf.plugins")
require("jconf.plugin_config")

--require("nvim-tree").setup({
--    sort = {
 --       sorter = "case_sensitive",
--    },
--    view = {
--        width = 30,
--    },
--    renderer = {
 --       group_empty = true,
   -- },
  --  filters = {
   --     dotfiles = true,
   -- },
--})
