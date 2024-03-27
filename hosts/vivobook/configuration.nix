# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, inputs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      # Home-Manager
      inputs.home-manager.nixosModules.default
      ../../modules/system/tlp
      ../../modules/system/syncthing
      ../../modules/system/printers
      # WM
      ../../modules/system/hyprland
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "vivobook"; # Define your hostname.

  nix.gc = {
  automatic = true;
  dates = "weekly";
  options = "-d --delete-older-than 7d";
  };
  
  nix.settings.experimental-features = [ "nix-command" "flakes"];

  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;
  networking.networkmanager.dns = "systemd-resolved";
  services.resolved.enable = true;

  # Set your time zone.
  time.timeZone = "America/Santiago";

  # Select internationalisation properties.
  i18n.defaultLocale = "es_CL.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "es_CL.UTF-8";
    LC_IDENTIFICATION = "es_CL.UTF-8";
    LC_MEASUREMENT = "es_CL.UTF-8";
    LC_MONETARY = "es_CL.UTF-8";
    LC_NAME = "es_CL.UTF-8";
    LC_NUMERIC = "es_CL.UTF-8";
    LC_PAPER = "es_CL.UTF-8";
    LC_TELEPHONE = "es_CL.UTF-8";
    LC_TIME = "es_CL.UTF-8";
  };

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  # services.xserver.desktopManager.gnome.enable = true;

  # Configure keymap in X11
  services.xserver = {
    xkb.layout = "latam";
    xkb.variant = "";
  };

  # Configure console keymap
  console.keyMap = "la-latin1";

  # Enable CUPS to print documents.
  services.printing.enable = true;
  
  # Enable tailscale
  services.tailscale.enable = true;

  # Enable bluetooth
  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true; # powers up the default Bluetooth controller on boot
  services.blueman.enable = true;
  
  # Enable sound with pipewire.
  sound.enable = true;
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
  };


  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.javier = {
    isNormalUser = true;
    description = "javier";
    extraGroups = [ "networkmanager" "wheel" "input" "video"];
    packages = with pkgs; [
      # thunderbird
      easyeffects
      inkscape
      gimp
      feh
      celluloid
      onlyoffice-bin
      qbittorrent
      zoom
      discord
      brave
      zotero
      spotify
      steam
      anydesk
      gitkraken
      vscode
      fira-code
      starship
      neofetch
      pfetch
      zoom-us
      pavucontrol
    ];
    shell = pkgs.zsh;
  };
  programs.zsh.enable = true;

  home-manager = {
    # also pass inputs to home-manager modules
    extraSpecialArgs = {inherit inputs;};
    users = {
      "javier" = import ./home.nix;
    };
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    neovim
    git
    wget
    firefox
    kitty
    zsh
    wev
    psmisc
    btop
    blueman
    tailscale
    # tlp
  ];

  fonts.packages = with pkgs; [
    corefonts
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    liberation_ttf
    fira-code
    fira-code-symbols
    nerdfonts
    roboto
    roboto-mono
    lmodern
  ];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.11"; # Did you read the comment?

}
