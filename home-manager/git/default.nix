{ config, pkgs, ...}:

{
  programs.git = {
    enable = true;
    userName  = "Javier Ocaranza";
    userEmail = "javier.ocaranza@protonmail.com";
  };
}