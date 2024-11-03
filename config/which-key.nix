{ pkgs, ... }: {
    programs.nvf.settings.vim = {
        extraPlugins = with pkgs.vimPlugins; {
            which-key = {
                package = which-key-nvim;
                    setup = ''
                        require("which-key").setup({
                            -- Behavior options
                            layout = {
                                align = "center", -- Align the keybindings in the menu
                                spacing = 6, -- Space between columns of keys
                            },
                        show_help = true, -- Show the help menu
                        -- Additional options can be added as needed
                        })
                    '';
            };
            devicons = {
                package = nvim-web-devicons;
            };
            mini-icons = {
                package = mini-icons;
            };
        };
  
  };
}


