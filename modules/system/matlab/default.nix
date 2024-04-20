{ config, pkgs, inputs, ... }:

{
  nixpkgs.overlays = [inputs.nix-matlab.overlay];
  environment.systemPackages = [pkgs.matlab];
}