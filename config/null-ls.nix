{ pkgs, ... }: {
  
  programs.nvf.settings.vim = {
      extraPlugins = with pkgs.vimPlugins; {
          none-ls = {
              package = none-ls-nvim;
              setup = ''
                  require("null-ls").setup({
                  -- Define sources for linting, formatting, etc.
                      sources = {
                          require("null-ls").builtins.diagnostics.eslint,  -- Example linter
                          require("null-ls").builtins.formatting.prettier, -- Example formatter
                          -- Add more built-ins as needed
                      },
                  })
              '';
          };
      };
  };
}
