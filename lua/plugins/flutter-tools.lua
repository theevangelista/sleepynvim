return {
  "nvim-flutter/flutter-tools.nvim",
  dependencies = {
    "mfussenegger/nvim-dap",
  },
  config = function()
    require("flutter-tools").setup({
      decorations = {
        statusline = {
          device = true,
        },
      },
      fvm = true,
      debugger = {
        enabled = true,
        register_configurations = function(_)
          require("dap").configurations.dart = {}
          require("dap.ext.vscode").load_launchjs()
        end,
      },
    })
  end,
}
