{ config, pkgs, lib, ...}:

{
  imports = [
    ./gtk.nix
    ./extensions.nix
  ];
}
