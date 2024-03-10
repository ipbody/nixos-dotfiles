{ pkgs, config, ... }:

{
  # Place Files Inside Home Directory
  # home.file.".config/waybar/conf.jsonc".source = ./conf.jsonc;
  home.file.".config/waybar/config".source = ./config;
  home.file.".config/waybar/style.css".source = ./style.css;
}
