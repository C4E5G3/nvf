{ pkgs, ... }: {
  
  programs.nvf.settings.vim = {
      extraPlugins = with pkgs.vimPlugins; {
          luasnip = {
              package = luasnip;
              setup = ''
                  require("luasnip").setup({
                  -- Luasnip specific configuration can go here
                  })
              '';
          }; 
      }; 
  }; 
} 
