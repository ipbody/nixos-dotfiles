{ config, pkgs, lib, ...}:

{
  home.packages = with pkgs; [
    gnome.gnome-tweaks
  ];

  imports = [
    ./config.nix
    ./gtk.nix
    ./extensions.nix
  ];
}
