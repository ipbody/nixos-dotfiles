{ config, pkgs, lib, ...}:

{
  home.file.".background-image".source = ./media/background.jpg;

  dconf.settings = with lib.hm.gvariant; {
    "org/gnome/desktop/interface" = {
      show-battery-percentage = true;
      color-scheme = "prefer-dark";
    };

    "org/gnome/settings-daemon/plugins/power" = {
      sleep-inactive-ac-type = "nothing";
    };

    "org/gnome/desktop/peripherals/touchpad" = {
       tap-to-click = true;
    };

    "org/gnome/desktop/wm/keybindings" = {
      close = ["<Super>q"];
    };

    
    "org/gnome/desktop/background" = {
      color-shading-type = "solid";
      picture-options = "zoom";
      # picture-uri = "file:///home/javier/nixos/dotfiles/gnome/media/background.jpg";
      picture-uri = "file:///home/javier/.background-image";
      # picture-uri-dark = "file:///home/javier/nixos/dotfiles/gnome/media/background.jpg";
      picture-uri-dark = "file:///home/javier/.background-image";
    };

    "org/gnome/desktop/screensaver" = {
      picture-uri = "file:///home/javier/nixos/dotfiles/gnome/media/background.jpg";
    };

    "org/gnome/shell" = {
      disable-user-extensions = false;
      favorite-apps = [
        "kitty.desktop"
        "org.gnome.Nautilus.desktop"
        "firefox.desktop"
        "brave-browser.desktop"
        "spotify.desktop"
        "discord.desktop"
        "steam.desktop"
        "code.desktop"
        "GitKraken.desktop"
        "zotero.desktop"
        "org.gnome.Settings.desktop"
      ];
    };
  };
}