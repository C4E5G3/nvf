{ pkgs, ... }: {
  programs.nvf.settings.vim.extraPlugins = with pkgs.vimPlugins; {
    noice-nvim = {
      package = noice-nvim;
      setup = "require('noice').setup({ cmdline = { enabled = true }})";
    };
  };
}
