{ config, pkgs, lib, ...}:

{
  gtk = {
    enable = true;
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };
    
    gtk3.extraConfig = {
        Settings = "gtk-application-prefer-dark-theme=1";
      };

      gtk4.extraConfig = {
        Settings = "gtk-application-prefer-dark-theme=1";
      };
  };

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
      picture-uri = "file:///home/javier/nixos/dotfiles/gnome/media/background.jpg";
      picture-uri-dark = "file:///home/javier/nixos/dotfiles/gnome/media/background.jpg";
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

      # `gnome-extensions list` for a list
      enabled-extensions = [
        "user-theme@gnome-shell-extensions.gcampax.github.com"
        "trayIconsReloaded@selfmade.pl"
        "Vitals@CoreCoding.com"
        "dash-to-dock@micxgx.gmail.com"
        "just-perfection-desktop@just-perfection"
        "blur-my-shell@aunetx"
      ];
    };
    
    "org/gnome/shell/extensions/dash-to-dock" = {
      dash-max-icon-size = 32;
      apply-custom-theme = true;
      click-action = "previews";
      show-mounts = false;
      show-trash = false;
      show-apps-at-top = true;
    };

    "org/gnome/shell/extensions/vitals" = {
      hot-sensors = [
        "_memory_usage_"
        "_temperature_cpu_0 core 0_"
        "_temperature_cpu_0 core 1_"
        "_processor_frequency_"
      ];
    };

    "org/gnome/shell/extensions/just-perfection" = {
      window-demands-attention-focus = true;
    };

    # "org/gnome/shell/extensions/just-blur-my-shell" = {
    #   panel = {
    #     blur = true;
    #   };
    #   dash-to-dock = {
    #     blur = lib.hm.gvariant.;
    #   };
    # };
  };

  home.packages = with pkgs; [
    gnomeExtensions.user-themes
    gnomeExtensions.tray-icons-reloaded
    gnomeExtensions.vitals
    gnomeExtensions.dash-to-dock
    gnomeExtensions.just-perfection
    gnomeExtensions.blur-my-shell
  ];
}
