{ pkgs, ... }: {
  
  programs.nvf.settings.vim.extraPlugins = with pkgs.vimPlugins; {
      base16 = {
          package = base16-nvim;
      setup = ''
          vim.cmd('colorscheme base16-classic-dark')
        '';
      };
  
  };
}
