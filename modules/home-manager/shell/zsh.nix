{ config, pkgs, lib, ...}:

{
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    shellAliases = {
      rebuild = "sudo nixos-rebuild switch --flake ~/.dotfiles#vivobook";
      update = "nix flake update";
    };
    oh-my-zsh = {
      enable = true;
      plugins = ["git"];
    };
    initExtra = "pfetch";
  };
}