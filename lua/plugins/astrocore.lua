-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing
-- First, define the functions for insert mode actions
-- Define a function for the normal mode toggle action
---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- Configure core features of AstroNvim
    features = {
      large_buf = { size = 1024 * 256, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      autopairs = true, -- enable autopairs at start
      cmp = true, -- enable completion at start
      diagnostics_mode = 3, -- diagnostic mode on start (0 = off, 1 = no signs/virtual text, 2 = no virtual text, 3 = on)
      highlighturl = true, -- highlight URLs at start
      notifications = true, -- enable notifications at start
    },
    tabstop = 4,
    softtabstop = 4,
    shiftwidth = 4,
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
      virtual_text = true,
      underline = true,
    },
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        relativenumber = true, -- sets vim.opt.relativenumber
        number = true, -- sets vim.opt.number
        spell = false, -- sets vim.opt.spell
        signcolumn = "yes", -- sets vim.opt.signcolumn to yes
        wrap = false, -- sets vim.opt.wrap
      },
      g = { -- vim.g.<key>
        -- configure global vim variables (vim.g)
        -- NOTE: `mapleader` and `maplocalleader` must be set in the AstroNvim opts or before `lazy.setup`
        -- This can be found in the `lua/lazy_setup.lua` file
      },
    },
    -- Mappings can be configured through AstroCore as well.
    -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
    mappings = {
      n = { -- Normal mode mappings
        ["<space>"] = { "V", desc = "Enter visual line mode" },
        ["<space><space>"] = { "ggVG", desc = "Select all text" },
        [";"] = { ":", desc = "; -> :" },
        ["p"] = { "P", desc = "SWAP p -> P" },
        ["P"] = { "p", desc = "SWAP P -> p" },
        ["<A-]>"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
        ["<A-[>"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },
        ["<A-d>"] = { function() require("astrocore.buffer").close() end, desc = "Remove current buffer" },
      },

      v = { -- Normal mode mappings
        [";"] = { ":", desc = "; -> :" },
        ["<space><space>"] = { "ggVG", desc = "Select all text" },
        ["L"] = { ">gv", desc = "Move left" },
        ["H"] = { "<gv", desc = "Move Right" },
      },
    },
  },
}
