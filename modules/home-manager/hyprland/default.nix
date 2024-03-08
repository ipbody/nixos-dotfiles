{ pkgs, config, ... }:

{
  # Place Files Inside Home Directory
  home.file.".config/hypr/hyprland.conf".source = ./hyprland.conf;
}
