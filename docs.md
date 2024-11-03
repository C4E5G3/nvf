# My Personal NVF setup

#### This setup may be flawed as I have never built Neovim in Lua before. However, it may serve as boilerplate for someone wanting to build out an NVF Neovim config. This is designed as a template that hopefully you can crib from, mix and match from whilst building your own NVF-Neovim configuration. (I will create a self-contained flake separately) 

### Core principles

I think the configuration should be fairly self-explanatory. I have atomized all the plugins as nix files, which are all fed to the registry file, which then obviously is fed into home.nix, your Home Manager. The configuration reflects my own preferences, and I have tried to keep it reasonably lean.

Hopefully this setup can help you to build out your own nvf.
All questions, modifications and corrections gladly received.

#### Additional Info

I have installed as packages:

nodejs_22
gcc13
tree-sitter
wl-clipboard

These all are pertinent to the full-functioning of this NVF config.

### Footnote

NVF is absolutely great, so I am hoping this helps with general adoption
