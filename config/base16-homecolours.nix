{
  # My "Urban Cowboy" theme; option to classic-dark.(Not well-defined with Telescope)
  programs.nvf.settings.vim.theme = {
    enable = true;
    name = "base16";
    base16-colors = {
      base00 = "#101010"; # Background color, usually the darkest shade for primary content
      base01 = "#23262A"; # Slightly lighter background, used for secondary sections or panels
      base02 = "#4A4A4C"; # Used for borders or subtle highlights
      base03 = "#969896"; # Lighter color for muted text or UI elements
      base04 = "#b4b7b4"; # Additional lighter color for secondary text
      base05 = "#DCDCDC"; # Default Lualine & default foreground color for text
      base06 = "#e0e0e0"; # Lightest text color, often for highlights
      base07 = "#ffffff"; # Pure white, used for maximum contrast or highlights

      base09 = "#B0303D"; # Red, often used for errors or warnings
      base0D = "#6D91C8"; # French blue, often used for informational text or hints
      base0A = "#a77bca"; # Purple, commonly used for constants, keywords, or special variables
      base0B = "#C05071"; # LL- insert: Muted Red, typically used for success messages or insert mode
      base08 = "#88C070"; # LL- visual: Green, special highlights & less severe warnings.Brighter=#A6E22E, Weaker=#7BA45F
      base0C = "#6E6E3A"; # Yellow, often used for attention-grabbing elements
      base0E = "#F5D78C"; # Olive, used for special highlights or emphasis (such as active text)
      base0F = "#D4AF37"; # Gold, used for additional text highlights, annotations, or notes
    };

  };
}


