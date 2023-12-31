-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
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
    ["<leader>r"] = { name = "󰼛 Run" },
    ["<leader>rt"] = { name = "󱜚 Test" },
    ["<leader>rtn"] = {
      function() require("neotest").run.run() end,
      desc = "Run nearest test",
    },
    ["<leader>rtf"] = {
      function() require("neotest").run.run(vim.fn.expand "%") end,
      desc = "Run test in this file",
    },
    ["<leader>rtw"] = {
      function() require("neotest").watch.toggle(vim.fn.expand "%") end,
      desc = "Watch this file",
    },
    ["<leader>rto"] = {
      function() require("neotest").output.open() end,
      desc = "Open test result",
    },
    ["<leader>rts"] = {
      function() require("neotest").summary.toggle() end,
      desc = "Toggle test window",
    },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
