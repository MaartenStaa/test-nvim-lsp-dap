return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "nvim-neotest/nvim-nio",
    "mfussenegger/nvim-dap-python",
    'theHamsta/nvim-dap-virtual-text',
  },
  config = function ()
    require("dap-python").setup("uv")
    require("dapui").setup()
    require("nvim-dap-virtual-text").setup({
	    virt_text_pos = 'inline',
    })

    vim.keymap.set('n', '<leader>b', function() require('dap').toggle_breakpoint() end)
    vim.keymap.set('n', '<leader>c', function()
      require('dap').continue()
      require('dapui').open()
    end)
    vim.keymap.set('n', '<leader>dt', function() require('dapui').toggle() end)
    vim.keymap.set('n', '<leader>dq', function()
      require('dap').close()
      require('dapui').close()
    end)
  end
}
