{ pkgs, config, ... }:

{
  home.file.".config/yazi/plugins/".source = ./plugins;
  home.file.".config/yazi/yazi.toml".source = ./yazi.toml;
  home.file.".config/yazi/theme.toml".source = ./theme.toml;
  home.file.".config/yazi/keymap.toml".source = ./keymap.toml;
  home.packages = with pkgs; [
    yazi
    fd
    ripgrep
    fzf
    zoxide
    ouch
    ffmpegthumbnailer
    xdragon
  ];
  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
  };

  programs.yazi = {
    enable = true;
    enableZshIntegration = true;
  };
}
