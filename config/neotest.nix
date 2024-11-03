{ pkgs, ... }: {
  
  programs.nvf.settings.vim = {
      extraPlugins = with pkgs.vimPlugins; {
          neotest = {
              package = neotest;
              setup = ''
                  require("neotest").setup({
                  -- Add configuration for neotest if needed
                  })
              '';
          };
      };

      maps.normal = {
          "<leader>nn".action = "<cmd>lua require('neotest').run.run()<CR>";                    # Run nearest test
          "<leader>nf".action = "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<CR>";  # Tests in current file
          "<leader>ns".action = "<cmd>lua require('neotest').summary.toggle()<CR>";             # Toggle test summary
      };
    
  };
}

