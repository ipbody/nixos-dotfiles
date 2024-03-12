{ pkgs, config, ... }:

{
  # Define packages for hyprland
  home.packages = with pkgs; [
    rofi-wayland
    waybar
    dunst
    mpd
    light
    networkmanagerapplet
    libnotify
    xdg-desktop-portal-hyprland
    libsForQt5.polkit-kde-agent
    qt6.qtwayland
    libsForQt5.qt5.qtwayland
    swww
  ];
}
