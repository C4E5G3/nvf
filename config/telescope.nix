{pkgs, ...}: {
  programs.nvf.settings.vim = {
      telescope.enable = true;
      extraPlugins = with pkgs.vimPlugins; {
          
          telescope-ui = {
              package = telescope-ui-select-nvim;
          };
          
          telescope-fzf = {
              package = telescope-fzf-native-nvim;
          };
          
          telescope-git = {
              package = telescope-github-nvim;
          };
      
          telescope-frecency = {
              package = telescope-frecency-nvim;
          };

          telescope-undo = {
              package = telescope-undo-nvim;
          };
      
          telescope-live-grep = {
              package = telescope-live-grep-args-nvim;
          };

      };
      
      maps.normal = {
          "<leader>r".action = "<cmd>Telescope find_files<CR>";       # Find files
          "<leader>tl".action = "<cmd>Telescope live_grep<CR>";       # Live grep
          "<leader>tb".action = "<cmd>Telescope buffers<CR>";         # Buffers
          "<leader>th".action = "<cmd>Telescope help_tags<CR>";       # Help tags
          "<leader>tq".action = "<cmd>Telescope frecency<CR>";        # Frequent files
          "<leader>tu".action = "<cmd>Telescope undo<CR>";            # Undo history
          "<leader>tgc".action = "<cmd>Telescope git_commits<CR>";    # Git commits
          "<leader>tgs".action = "<cmd>Telescope git_status<CR>";     # Git status
      };
  
  };
}
