{ config, pkgs, inputs, ... }:

{
  environment.systemPackages = [pkgs.syncthing];
  services.syncthing.enable = true;
}