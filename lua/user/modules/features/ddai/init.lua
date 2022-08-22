local M = {}

-- disable keybinds
doom.core.doom.binds = nil -- disable keybinds

-- https://stackoverflow.com/questions/9145432/load-lua-files-by-relative-path
-- local module_prefix = (...):match("(.-)[^%.]+$") .. "ddai." -- user.modules.features.ddai.

local module_prefix = 'user.modules.features.ddai.'

require(module_prefix .. 'options') -- require('user.modules.features.ddai.options')
local keybinds = require(module_prefix .. 'keybinds')

-- local keybinds = require(module_prefix .. 'keybinds') -- require('user.modules.features.ddai.options')
M.binds = keybinds

-- require("doom.utils.logging").info("===== folderOfThisFile: " .. module_prefix)

-- print(vim.inspect(M))

return M
