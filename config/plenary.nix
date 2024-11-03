{ pkgs, ... }: {
  
  programs.nvf.settings.vim = {
      extraPlugins = with pkgs.vimPlugins; {
          plenary = {
              package = plenary-nvim;
          }; 
      }; 
      
  }; 
} 

