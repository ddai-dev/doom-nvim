-- doom_config - Doom Nvim user configurations file
--
-- This file contains the user-defined configurations for Doom nvim.
-- Just override stuff in the `doom` global table (it's injected into scope
-- automatically).

-- ADDING A PACKAGE
--
-- doom.use_package("EdenEast/nightfox.nvim", "sainnhe/sonokai")
-- doom.use_package({
--   "ur4ltz/surround.nvim",
--   config = function()
--     require("surround").setup({mappings_style = "sandwich"})
--   end
-- })

-- ADDING A KEYBIND
--
-- doom.use_keybind({
--   -- The `name` field will add the keybind to whichkey
--   {"<leader>s", name = '+search', {
--     -- Bind to a vim command
--     {"g", "Telescope grep_string<CR>", name = "Grep project"},
--     -- Or to a lua function
--     {"p", function()
--       print("Not implemented yet")
--     end, name = ""}
--   }}
-- })

-- ADDING A COMMAND
--
-- doom.use_cmd({
--   {"CustomCommand1", function() print("Trigger my custom command 1") end},
--   {"CustomCommand2", function() print("Trigger my custom command 2") end}
-- })

-- ADDING AN AUTOCOMMAND
--
-- doom.use_autocmd({
--   { "FileType", "javascript", function() print('This is a javascript file') end }
-- })

doom.use_package(
  "sainnhe/gruvbox-material"
)

doom.colorscheme = 'gruvbox-material'

doom.logging = 'info'

doom.freeze_dependencies = false

doom.indent = 2


-- macros
doom.disable_macros = true

doom.preserve_edit_pos = true
doom.highlight_yank = true


local whichkey = doom.features.whichkey -- Get the whichkey module
-- You can also access it as `doom.modules.features.whichkey`

-- Inspect the existing config
-- print(vim.inspect(whichkey))


-- vim: sw=2 sts=2 ts=2 expandtab

-- require("which-key").reset()

-- config.lua
-- You can also access it as `doom.modules.features.whichkey`

-- Some common settings are exposed in the `<module>.settings` table.

-- Inspect the existing config
-- print(vim.inspect(whichkey))

-- -- Replace all keybinds
-- whichkey.binds = {
--   { '<leader>u', name = '+user', {
--     { "wr", function() require("which-key").reset(), name = "Reset whichkey"}
--   }}
-- }
