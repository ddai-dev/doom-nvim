local ddai = {}

-- https://stackoverflow.com/questions/9145432/load-lua-files-by-relative-path
local module_prefix = (...):match("(.-)[^%.]+$") .. "ddai." -- user.modules.features.ddai.
require(module_prefix .. 'options') -- require('user.modules.features.ddai.options')

-- require("doom.utils.logging").info("===== folderOfThisFile: " .. module_prefix)

return ddai
