-- 引入 user/configs/overrides 文件(mason lsp list)
local overrides = require "user.configs.overrides"

return {
  "nvim-treesitter/nvim-treesitter",
  -- opts = function(_, opts)
  --   -- add more things to the ensure_installed table protecting against community packs modifying it
  --   opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
  --     -- "lua"
  --   })
  -- end,

  opts = overrides.treesitter,
}
