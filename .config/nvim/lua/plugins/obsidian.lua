return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    detect_cwd = false,
    completion = {
      nvim_cmp = true,
      min_chars = 2,
      new_notes_location = "current_dir",
      prepend_note_id = false,
      prepend_note_path = false,
      use_path_only = true,
    },
    workspaces = {
      {
        name = "personal",
        path = os.getenv("OBSIDIAN_PATH"),
      },
    },

    -- see below for full list of options 👇
  },
}
