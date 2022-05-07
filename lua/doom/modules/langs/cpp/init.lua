local utils = require("doom.utils")
local cpp = {}

cpp.settings = {
  language_server_name = utils.get_sysname() == "Darwin" and "clangd" or "ccls",
}

cpp.autocmds = {
  {
    "BufWinEnter",
    "*.cpp,*.c,*.h",
    function()
      local langs_utils = require("doom.modules.langs.utils")
      langs_utils.use_lsp(doom.langs.cpp.settings.language_server_name)

      require("nvim-treesitter.install").ensure_installed("cpp", "c")

      -- Setup null-ls
      if doom.modules.linter then
        local null_ls = require("null-ls")

        langs_utils.use_null_ls_source({
          null_ls.builtins.diagnostics.cppcheck,
          null_ls.builtins.formatting.clang_format,
        })
      end
    end,
    once = true,
  },
}

return cpp