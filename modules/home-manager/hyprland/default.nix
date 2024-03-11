{ pkgs, config, ... }:

{
  # Import configs
  imports = [
    ./packages.nix
  ];
  # Place Files Inside Home Directory
  home.file.".config/hypr/hyprland.conf".source = ./hyprland.conf;
  home.file.".config/hypr/windowrules.conf".source = ./windowrules.conf;
}
