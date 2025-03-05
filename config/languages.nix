{ pkgs, ... }: {
  programs.nvf.settings.vim = {

    # Language-specific settings
      languages = {
          nix = {
              enable = true;
              lsp.enable = true;
              extraDiagnostics.enable = false;
              format.enable = true;
              format.package = pkgs.nixfmt-rfc-style;
              treesitter.enable = true;
              # lsp.server = "nil";
          };

          go = {
              enable = true;
              lsp.enable = true;
              dap.enable = true;
              dap.debugger = "delve";
              treesitter.enable = true;
              treesitter.package = pkgs.vimPlugins.nvim-treesitter.builtGrammars.go;
              # lsp.server = "gopls";
          };

          elixir = {
              enable = true;
              lsp.enable = true;
              elixir-tools.enable = true;
              format.enable = true;
              treesitter.enable = true;
              # lsp.server = "elixirls";
          };

          sql = {
              enable = true;
              extraDiagnostics.enable = true;
              format.enable = true;
              lsp.enable = true;
              treesitter.enable = true;
              # lsp.server = "sqls";
          };

          html.enable = true;
          lua.enable = true;
          markdown.enable = true;
    };

  };
}

