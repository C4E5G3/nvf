{
    programs.nvf.settings.vim = { 

    autocomplete.nvim-cmp = {
        enable = true;

    sources = {
        "nvim_lsp" = "[LSP]";
        "path" = "[Path]";
        "buffer" = "[Buffer]";
        "luasnip" = "[Snippets]";
        };
    };

    maps.insert = {
        "<C-Space>".action = "<cmd>lua require'cmp'.complete()<CR>";  # Trigger completion
        "<C-n>".action = "<cmd>lua require'cmp'.select_next_item()<CR>";  # Navigate to the next item
        "<C-p>".action = "<cmd>lua require'cmp'.select_prev_item()<CR>";  # Navigate to the previous item
        "<C-e>".action = "<cmd>lua require'cmp'.close()<CR>";  # Close the completion menu
        "<C-c>".action = "<cmd>lua require'cmp'.confirm('<CR>')<CR>";  # Confirm the selected completion
        };
    };
}
