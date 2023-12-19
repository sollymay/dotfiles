return {
  "epwalsh/obsidian.nvim",
  lazy = true,
  ft = "markdown",
  event = {
    -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
  },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",
  },
  detect_cwd = true,
  opts = {
    completion = {
      nvim_cmp = true,
      min_chars = 2,
      prepend_note_id = true,
    },
  },
}
