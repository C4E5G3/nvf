{ pkgs, ... }: {
  
  programs.nvf.settings.vim = {
      extraPlugins = with pkgs.vimPlugins; {
          neogit = {
              package = neogit;
          };
      };

      maps.normal = {
          "<leader>v".action = "<cmd>Neogit<CR>";
          "<leader>c".action = "<cmd>Neogit close<CR>";
          "<leader>gs".action = "<cmd>Neogit kind=split<CR>";       # Open Neogit in a split
          "<leader>gy".action = "<cmd>Neogit commit<CR>";           # Shortcut to commit
          "<leader>gd".action = "<cmd>Neogit diff<CR>";             # View diffs
          "<leader>gp".action = "<cmd>Neogit push<CR>";             # Push changes
          "<leader>gl".action = "<cmd>Neogit log<CR>";              # View commit log
      };
  
  };
}
