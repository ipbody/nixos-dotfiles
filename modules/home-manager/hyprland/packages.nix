{ pkgs, config, ... }:

{
  # Define packages for hyprland
  home.packages = with pkgs; [
    rofi-wayland
    waybar
    dunst
  ];
}
