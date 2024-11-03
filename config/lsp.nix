{
  programs.nvf.settings.vim = {
      lsp = {
          formatOnSave = true;
          lspkind.enable = true;
          lightbulb.enable = false;
          lspsaga.enable = false;
          trouble.enable = false;
          lspSignature.enable = true;
          lsplines.enable = true;
          lspconfig.enable = true;
          nvim-docs-view.enable = true;
          };
      maps = {
          normal = {
              "<leader>pd".action = "<cmd>lua vim.lsp.buf.definition()<CR>";
              "<leader>pr".action = "<cmd>lua vim.lsp.buf.references()<CR>";
              "<leader>ph".action = "<cmd>lua vim.lsp.buf.hover()<CR>";
              "<leader>pf".action = "<cmd>lua vim.lsp.buf.formatting()<CR>";
              };
      };
  };
}
