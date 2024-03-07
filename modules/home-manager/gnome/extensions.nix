{ config, pkgs, lib, ...}:

{
  dconf.settings = with lib.hm.gvariant; {
    "org/gnome/shell" = {
      # `gnome-extensions list` for a list
      enabled-extensions = [
        "user-theme@gnome-shell-extensions.gcampax.github.com"
        "trayIconsReloaded@selfmade.pl"
        "Vitals@CoreCoding.com"
        "dash-to-dock@micxgx.gmail.com"
        "just-perfection-desktop@just-perfection"
        "blur-my-shell@aunetx"
        "caffeine@patapon.info"
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
    gnomeExtensions.caffeine
  ];
}