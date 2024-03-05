{ config, pkgs, lib, ...}:

{
  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    syntaxHighlighting.enable = true;
    shellAliases = {
      rebuild = "sudo nixos-rebuild switch --flake ~/nixos/#default";
      update = "nix flake update";
    };
    oh-my-zsh = {
      enable = true;
      plugins = ["git"];
    };
    initExtra = "pfetch";
  };
}