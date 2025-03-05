{ pkgs, ... }: {
  
  programs.nvf.settings.vim = {
      debugger = {
          nvim-dap = {
              enable = true;
              ui.enable = true;
          };
      };

      extraPlugins = with pkgs.vimPlugins; {
          nvim-dap = {
          package = nvim-dap;
      };
      
      ui = {
          package = nvim-dap-ui;
          setup = ''
              local dap, dapui = require("dap"), require("dapui")
              dapui.setup {
                  icons = { expanded = "▾", collapsed = "▸" },
                  mappings = { expand = { "<CR>", "<2-LeftMouse>" } },
                  layouts = {
                      {
                          elements = {
                              { id = "scopes", size = 0.25 },
                              { id = "breakpoints", size = 0.25 },
                              { id = "stacks", size = 0.25 },
                              { id = "watches", size = 0.25 },
                          },
                      size = 40,
                      position = "left",
                  },
                      {
                          elements = { "repl", "console" },
                          size = 0.25,
                          position = "bottom",
                      },
                  },
            }
            dap.listeners.after.event_initialized["dapui_config"] = function()
            dapui.open()
            end
            dap.listeners.before.event_terminated["dapui_config"] = function()
            dapui.close()
            end
            dap.listeners.before.event_exited["dapui_config"] = function()
            dapui.close()
            end
            '';
          };
      };

      maps.normal = {
          "<F5>".action = "<cmd>lua require'dap'.continue()<CR>";           # Start or continue debugging
          "<F10>".action = "<cmd>lua require'dap'.step_over()<CR>";         # Step over
          "<F11>".action = "<cmd>lua require'dap'.step_into()<CR>";         # Step into
          "<F9>".action = "<cmd>lua require'dap'.step_out()<CR>";          # Step out
          "<F8>".action = "<cmd>lua require'dap'.toggle_breakpoint()<CR>";  # Toggle breakpoint
          "<F7>".action = "<cmd>lua require'dap'.repl.open()<CR>";          # Open DAP REPL
          "<F6>".action = "<cmd>lua require'dap'.run_last()<CR>";           # Rerun last debug session
      };
  
  };
}

