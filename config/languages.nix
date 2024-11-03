{ pkgs, ... }: {
  programs.nvf.settings.vim = {

    # Language-specific settings
      languages = {
          nix = {
              enable = true;
              lsp.enable = true;
              lsp.server = "nil";
              extraDiagnostics.enable = false;
              format.enable = true;
              format.package = pkgs.nixfmt-rfc-style;
              treesitter.enable = true;
          };

          go = {
              enable = true;
              lsp.enable = true;
              lsp.server = "gopls";
              dap.enable = true;
              dap.debugger = "delve";
              treesitter.enable = true;
              treesitter.package = pkgs.vimPlugins.nvim-treesitter.builtGrammars.go;
          };

          elixir = {
              enable = true;
              lsp.enable = true;
              lsp.server = "elixirls";
              elixir-tools.enable = true;
              format.enable = true;
              treesitter.enable = true;
          };

          sql = {
              enable = true;
              extraDiagnostics.enable = true;
              format.enable = true;
              lsp.enable = true;
              lsp.server = "sqls";
              treesitter.enable = true;
          };

          html.enable = true;
          lua.enable = true;
          markdown.enable = true;
    };

    # General Tree-sitter config
          treesitter = {
              enable = true;
              highlight.enable = true;     # Syntax highlighting globally
              indent.enable = true;        # Global indentation support
              fold = false;                # Disable folding unless needed specifically
              incrementalSelection.enable = true; # Enable incremental selection globally
    };
  };
}

