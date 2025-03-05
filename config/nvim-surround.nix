{ pkgs, ... }: {
  programs.nvf.settings.vim.extraPlugins = with pkgs.vimPlugins; {
    nvim-surround = {
      package = nvim-surround;
      setup = "require('nvim-surround').setup()";
    };
  };
}
