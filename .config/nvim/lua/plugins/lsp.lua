return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      pylsp = {
        pylsp = {
          configurationSources = { "flake8" },
          plugins = {
            jedi_completion = { enabled = true },
            jedi_hover = { enabled = true },
            jedi_references = { enabled = true },
            jedi_signature_help = { enabled = true },
            jedi_symbols = { enabled = true, all_scopes = true },
            pycodestyle = { enabled = false },
            flake8 = {
              enabled = true,
              ignore = {},
              maxLineLength = 120,
            },
            mypy = { enabled = true },
            isort = { enabled = false },
            yapf = { enabled = false },
            pylint = { enabled = false },
            pydocstyle = { enabled = false },
            mccabe = { enabled = false },
            preload = { enabled = false },
            rope_completion = { enabled = true },
          },
        },
      },
      bashls = {},
      dockerls = {},
      jsonls = {},
      sqlls = {},
      hls = {},
      marksman = {},
      emmet_ls = {},
      html = {},
      tsserver = {},
    },
  },
}
