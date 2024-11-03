{pkgs, ...}: {
  programs.nvf.settings = {
      vim.extraPlugins = with pkgs.vimPlugins; {
          nvim-autopairs = {
              package = nvim-autopairs;
              setup = ''
                  require("nvim-autopairs").setup {}
              '';
          };
      };
  };
}
