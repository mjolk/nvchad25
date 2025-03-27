local dap = require "dap"
local dapui = require "dapui"

vim.g.dap_virtual_text = true
vim.api.nvim_set_hl(0, "red", { fg = "#ff1303" })

vim.fn.sign_define("DapBreakpoint", { text = "", texthl = "red", linehl = "DapBreakpoint", numhl = "DapBreakpoint" })
vim.fn.sign_define(
  "DapBreakpointCondition",
  { text = "", texthl = "red", linehl = "DapBreakpoint", numhl = "DapBreakpoint" }
)
vim.fn.sign_define(
  "DapBreakpointRejected",
  { text = "", texthl = "red", linehl = "DapBreakpoint", numhl = "DapBreakpoint" }
)
vim.fn.sign_define("DapStopped", { text = "󰙧", texthl = "red", linehl = "DapBreakpoint", numhl = "DapBreakpoint" })
vim.fn.sign_define("DapLogPoint", { text = "", texthl = "red", linehl = "DapBreakpoint", numhl = "DapBreakpoint" })

dap.adapters.cppdbg = {
  id = "cppdbg",
  type = "executable",
  command = "OpenDebugAD7", -- add ~/.local/share/nvim/mason/bin to PATH!
}

dap.configurations.cpp = {
  {
    name = "Launch file",
    type = "cppdbg",
    request = "launch",
    program = function()
      return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
    end,
    cwd = "${workspaceFolder}",
    stopAtEntry = false,
    MIMode = "gdb",
    miDebuggerPath = "/usr/bin/gdb",
    setupCommands = {
      {
        description = "Enable pretty-printing for gdb",
        text = "-enable-pretty-printing",
        ignoreFailures = true,
      },
    },
  },
}
dap.configurations.c = dap.configurations.cpp
dap.listeners.before.attach.dapui_config = function()
  dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
  dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
  dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
  dapui.close()
end
