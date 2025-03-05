{
  programs.neovim = {
    enable = true;
    plugins = with pkgs.vimPlugins; [
      # Other plugins
      base16-vim
    ];
    extraConfig = ''
      " Set the base16 theme
      colorscheme base16-default-dark
    '';
  };
}
