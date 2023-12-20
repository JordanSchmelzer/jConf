local dap = require('dap')
require('dap-python').setup('~/.virtualenvs/debugpy/bin/python')
require("dapui").setup()

--require("dapui").open()
--require("dapui").close()
--require("dapui").toggle()

dap.listeners.after.event_initialized["dapui_config"] = function()
  require('dapui').open()
end

dap.listeners.before.event_terminated["dapui_config"] = function()
  require('dapui').close()
end

dap.listeners.before.event_exited["dapui_config"] = function()
  require('dapui').close()
end
