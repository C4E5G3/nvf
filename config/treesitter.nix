{ ... }: {


  programs.nvf.settings.vim = {
    # Standard Tree-sitter configuration using built-in options
    treesitter = {
      enable = true;  # Enable Tree-sitter
      highlight.enable = true;  # Enable highlighting
      indent.enable = true;     # Enable indentation support
      incrementalSelection.enable = true;  # Enable incremental selection
    };

    # Append custom Lua configuration for Tree-sitter
    luaConfigRC.treesitter = ''
      -- Tree-sitter setup including text objects
      require("nvim-treesitter.configs").setup {
        highlight = { enable = true },
        indent = { enable = true },
        incremental_selection = { enable = true },

        textobjects = {
          select = {
            enable = true,
            lookahead = true,  -- Automatically jump forward to text object
            keymaps = {
              ["af"] = "@function.outer",  -- Around function
              ["if"] = "@function.inner",   -- Inside function
              ["ac"] = "@class.outer",      -- Around class
              ["ic"] = "@class.inner",      -- Inside class
            },
          },
          move = {
            enable = true,
            set_jumps = true,  -- Set jumps in the jumplist
            goto_next_start = { ["]]"] = "@function.outer" },
            goto_previous_start = { [["] = "@function.outer" },
          },
          swap = {
            enable = true,
            swap_next = { ["<leader>a"] = "@parameter.inner" },
            swap_previous = { ["<leader>A"] = "@parameter.inner" },
          },
        },
      }
    '';
  };
}
