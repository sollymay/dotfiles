
local status_ok, dap = pcall(require, "dap")
if not status_ok then
  return
end

dap.adapters.dart = {
    type = "executable",
    command = "flutter",
    -- This command was introduced upstream in https://github.com/dart-lang/sdk/commit/b68ccc9a
    args = {"debug_adapter"}
  }
  dap.configurations.dart = {
    {
      type = "dart",
      request = "launch",
      name = "Launch Flutter Program",
      -- The nvim-dap plugin populates this variable with the filename of the current buffer
      program = "${file}",
      -- The nvim-dap plugin populates this variable with the editor's current working directory
      cwd = "${workspaceFolder}",
    }
  }
require("nvim-dap-virtual-text").setup()
require("dapui").setup()

local dapui = require("dapui")

dap.listeners.after.event_initialized["dapui_config"] = function ()
    dapui.open()
end

dap.listeners.before.event_terminated["dapui_config"] = function ()
    dapui.close()
end

dap.listeners.before.event_exited["dapui_config"] = function ()
    dapui.close()
end
