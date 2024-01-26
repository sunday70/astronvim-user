-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)

return {
  -- first key is the mode
  n = {
    -- astronvim 这么写才可以映射上, 且需修改/Users/zard/.config/nvim/lua/astronvim/utils/lsp.lua 默认K键的映射
    ["t"] = "j",
    ["n"] = "k",
    ["s"] = "l",
    ["T"] = "J",
    ["N"] = "K",
    ["S"] = "L",
    ["j"] = "t",
    ["k"] = "n",
    ["l"] = "s",
    ["J"] = "T",
    ["K"] = "N",
    ["L"] = "S",

    -- read source code
    -- ["<leader>tt"] = { "<cmd>TagbarToggle<cr>", desc = "toggle tagbar" },

    -- replace tabs with spaces
    ["<leader>rt"] = { "<cmd>%ret! 2<cr>", desc = "Replace tabs with spaces" },

    -- quit
    ["<leader>q"] = { "<cmd>wq!<cr>", desc = "Quit" },
    ["<leader>Q"] = { "<cmd>wqa!<cr>", desc = "Quit all" },

    -- save
    ["<C-l>"] = { "<cmd>w!<cr>", desc = "Save" },

    -- switch between windows
    ["<C-w>t"] = { "<C-w>j", desc = "Window down" },
    ["<C-w>n"] = { "<C-w>k", desc = "Window up" },
    ["<C-w>s"] = { "<C-w>l", desc = "Window right" },

    -- Resize with arrows
    ["<C-up>"] = { "<cmd>res -5<cr>", desc = "" },
    ["<C-down>"] = { "<cmd>res +5<cr>", desc = "" },
    ["<C-left>"] = { "<cmd>vertical resize+5<cr>", desc = "" },
    ["<C-right>"] = { "<cmd>vertical resize-5<cr>", desc = "" },

    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    -- L = {
    --   function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
    --   desc = "Next buffer",
    -- },
    -- H = {
    --   function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
    --   desc = "Previous buffer",
    -- },

    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  v = {
    ["t"] = { "j", desc = "Visual t" },
    ["n"] = { "k", desc = "Visual n" },
    ["s"] = { "l", desc = "Visual s" },
    ["j"] = { "t", desc = "Visual j" },
    ["k"] = { "n", desc = "Visual k" },
    ["l"] = { "s", desc = "Visual l" },
    ["T"] = { "J", desc = "Visual T" },
    ["N"] = { "K", desc = "Visual N" },
    ["S"] = { "L", desc = "Visual S" },
    ["J"] = { "T", desc = "Visual J" },
    ["K"] = { "N", desc = "Visual K" },
    ["L"] = { "S", desc = "Visual L" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  i = {
    -- insert mode leader key overrides keymap
    -- ["<leader>"] = { ",", desc = "Leader key" },

    -- navigate within insert mode
    ["<C-b>"] = { "<Left>", desc = "Move left" },
    ["<C-n>"] = { "<Down>", desc = "Move down" },
    ["<C-p>"] = { "<Up>", desc = "Move up" },
    ["<C-f>"] = { "<Right>", desc = "Move right" },
    ["<C-a>"] = { "<Home>", desc = "Home" },
    ["<C-e>"] = { "<End>", desc = "End" },
  },
}
