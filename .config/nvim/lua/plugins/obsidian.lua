<<<<<<< HEAD
--TODO: fix this crap :D
---@diagnostic disable-next-line: lowercase-global
function f(str)
  ---@diagnostic disable-next-line: undefined-global
  local outer_env = _ENV
  return (
    str:gsub("%b{}", function(block)
      local code = block:match("{(.*)}")
      local exp_env = {}
      setmetatable(exp_env, {
        __index = function(_, k)
          local stack_level = 5
          while debug.getinfo(stack_level, "") ~= nil do
            local i = 1
            repeat
              local name, value = debug.getlocal(stack_level, i)
              if name == k then
                return value
              end
              i = i + 1
            until name == nil
            stack_level = stack_level + 1
          end
          return rawget(outer_env, k)
        end,
      })
      local fn, err = load("return " .. code, "expression `" .. code .. "`", "t", exp_env)
      if fn then
        return tostring(fn())
      else
        error(err, 0)
      end
    end)
  )
end

local obsidian_path = os.getenv("OBSIDIAN_PATH")

return {
  "epwalsh/obsidian.nvim",
  lazy = true,
  event = {
    -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
    f("BufReadPre {obsidian_path}/**.md"),
    f("BufNewFile {obsidian_path}/**.md"),
  },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",

    -- see below for full list of optional dependencies 👇
  },
  opts = {
    dir = "{obsidian_path}/", -- no need to call 'vim.fn.expand' here
    -- see below for full list of options 👇
    completion = {
      nvim_cmp = true,
      min_chars = 2,
      prepend_note_id = true,
=======
return {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
    ft = "markdown",
    dependencies = {
        -- Required.
        "nvim-lua/plenary.nvim",
        "hrsh7th/nvim-cmp",
        "nvim-telescope/telescope.nvim",
    },
    opts = {
        detect_cwd = true,
        completion = {
            nvim_cmp = true,
            min_chars = 2,
            prepend_note_id = true,
        },
>>>>>>> d9558f82d51217a0b2ddcae628e60f46966acc1b
    },
  },
}
