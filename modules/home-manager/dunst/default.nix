{ pkgs, config, ... }:

{
  # Place Files Inside Home Directory
  # home.file.".config/waybar/conf.jsonc".source = ./conf.jsonc;
  home.file.".config/dunst/dunstrc".source = ./dunstrc;
}
