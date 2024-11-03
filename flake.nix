# From the NVF manual:   https://notashelf.github.io/nvf/index.xhtml
# These are the key elements to add to your system flake in order to run NVF in Home Manager.
# The manual also details other installation modes

{
  description = "User's flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    nvf.url = "github:notashelf/nvf/v0.7"; # Version 0.7 presently required for base16 theming
  };

  outputs = { nixpkgs, home-manager, nvf, ... }: let
  system = "x86_64-linux"; in {
    # ↓ this is your home output in the flake schema, expected by home-manager
    "your-username@your-hostname" = home-manager.lib.homeManagerConfiguration
      modules = [
        nvf.homeManagerModules.default # <- this imports the home-manager module that provides the options
        ./home.nix # <- your home entrypoint
      ];
    };

}
