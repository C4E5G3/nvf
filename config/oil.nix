{ pkgs, ... }: {
  programs.nvf.settings.vim.extraPlugins = with pkgs.vimPlugins; {
    oil-nvim = {
      package = oil-nvim;
      setup = "require('oil').setup()";
    };
  };

  programs.nvf.settings.vim.maps.normal = {
    "<leader>e" = { action = "<cmd>Oil<CR>"; }; # Open oil.nvim
  };
}
