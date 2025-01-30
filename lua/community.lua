-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.completion.codeium-nvim" },
  { import = "astrocommunity.pack.python-ruff" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.java" },
  { import = "astrocommunity.pack.cs" },
  { import = "astrocommunity.pack.cpp" },
  -- { import = "astrocommunity.pack.dart" },
  -- import/override with your plugins folder
}
