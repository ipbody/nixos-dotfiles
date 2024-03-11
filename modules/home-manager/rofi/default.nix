{ pkgs, config, ... }:

{
  # Place Files Inside Home Directory
  home.file.".config/rofi/config.rasi".source = ./config.rasi;
  home.file.".config/rofi/applets".source = ./applets;
  home.file.".config/rofi/colors".source = ./colors;
  home.file.".config/rofi/images".source = ./images;
  home.file.".config/rofi/launchers".source = ./launchers;
  home.file.".config/rofi/powermenu".source = ./powermenu;
  home.file.".config/rofi/scripts".source = ./scripts;
}
