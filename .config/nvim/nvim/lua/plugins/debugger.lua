return {
  "rcarriga/nvim-dap-ui",
  dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
  opts = function()
    local dap, dapui = require("dap"), require("dapui")

    dap.listeners.after.event_initialized["dapui_config"] = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated["dapui_config"] = function()
      dapui.close()
    end
    dap.listeners.before.event_exited["dapui_config"] = function()
      dapui.close()
    end

    vim.keymap.set("n", "<C-B>", ":DapToggleBreakpoint<CR>")
    vim.keymap.set("n", "<C-Q>", ":DapTerminate<CR>")
    vim.keymap.set("n", "<C-O>", ":DapStepOver<CR>")
  end,
}
