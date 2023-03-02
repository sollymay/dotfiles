return {
    "mfussenegger/nvim-dap",
    dependencies = {
        'rcarriga/nvim-dap-ui',
'theHamsta/nvim-dap-virtual-text'
    },
    config = function ()
        local dap = require("dap")
dap.adapters.dart = {
    type = "executable",
    command = "flutter",
    -- This command was introduced upstream in https://github.com/dart-lang/sdk/commit/b68ccc9a
    args = { "debug_adapter" }
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
local dapui = require("dapui")
local nvim_dap = require("nvim-dap-virtual-text")
nvim_dap.setup({})
dapui.setup()

dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
end

dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close()
end

dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close()
end

dap.defaults.fallback.terminal_win_cmd = '80vsplit new'

    end
}

