{ pkgs, ... }: {
  
  programs.nvf.settings.vim = {
      extraPlugins = with pkgs.vimPlugins; {
          lsp-config = {
              package = nvim-lspconfig;
          };
      };
      maps.normal = {
          "<leader>m".action = "<cmd>lua vim.diagnostic.open_float()<CR>"; # Show diagnostics in a floating window
          "<leader>k".action = "<cmd>lua vim.diagnostic.goto_next()<CR>";  # Go to the next diagnostic
          "<leader>jp".action = "<cmd>lua vim.diagnostic.goto_prev()<CR>";  # Go to the previous diagnostic
          "<leader>jl".action = "<cmd>lua vim.diagnostic.setloclist()<CR>"; # Set diagnostics in location list
          "<leader>jt".action = "<cmd>Telescope diagnostics<CR>";            # List all diagnostics using Telescope
      };
  };
}