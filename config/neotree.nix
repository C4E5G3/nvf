{pkgs, ...}:{
  
  programs.nvf.settings.vim = { 
      extraPlugins = with pkgs.vimPlugins; {
          neotree = {
              package = neo-tree-nvim;  
          };
      };
      
      maps.normal = {
          "<leader>z".action = "<cmd>Neotree<CR>";
          "<leader>x".action = "<cmd>Neotree close<CR>"; 
      };
  
  };
}

