---@type LazySpec
return {
  "mbbill/undotree",
  cmd = "UndotreeToggle",
  dependencies = {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          ["<Tab>"] = {
            "<cmd>UndotreeToggle<CR>",
            desc = "Find undotree",
          },
        },
      },
    },
  },
}
