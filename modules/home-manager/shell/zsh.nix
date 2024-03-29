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
    initExtra = ''pfetch
    function yy() {
      local tmp="$(mktemp -t "yazi-cwd.XXXXX")"
      yazi "$@" --cwd-file="$tmp"
      if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
        cd -- "$cwd"
      fi
      rm -f -- "$tmp"
    }'';
    envExtra = ''
      export EDITOR=nvim
      '';
  };
}