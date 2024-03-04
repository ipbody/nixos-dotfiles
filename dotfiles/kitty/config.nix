{ config, pkgs, lib, ...}:

{
  programs.kitty = {
    enable = true;
    theme = "Catppuccin-Mocha";
    extraConfig = builtins.readFile ./kitty.conf;
  };
}