#  setup ---> https://github.com/tjdevries/config.nvim ...https://www.youtube.com/watch?v=ALGBuFLzDSA
{pkgs, ...}: {
  
  programs.nvf.settings.vim = {
      extraPlugins = with pkgs.vimPlugins; {
          
          vim-dadbod-completion = {
              package = vim-dadbod-completion;
          };

          vim-dadbod-ui = {
              package = vim-dadbod-ui;
          };
      
          vim-dadbod = {
              package = vim-dadbod;
          };
      };
  
  };
}
