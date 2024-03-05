{ config, pkgs, inputs, ... }:

{
  environment.systemPackages = [pkgs.syncthing];
  # services.syncthing.enable = true;
  services = {
    syncthing = {
      enable = true;
      user = "javier";
      dataDir = "/home/javier/Documentos";
      configDir = "/home/javier/.config/syncthing";
      overrideDevices = true;     # overrides any devices added or deleted through the WebUI
      overrideFolders = false;     # overrides any folders added or deleted through the WebUI
      settings = {
        devices = {
          "PC Control Avanzado 2" = { id = "7JWVM65-BIO6MLB-VTDODZI-DBXORYI-I4KD6NK-EZEIHAO-AAMLYMO-GXAFEAQ"; };
        };
        # folders = {
        #   "Doctorado" = {         # Name of folder in Syncthing, also the folder ID
        #     path = "/home/javier/Documentos/Ucosas/Doctorado";    # Which folder to add to Syncthing
        #     devices = [ "PC Control Avanzado 2" ];      # Which devices to share the folder with
        #   };
        # };
      };
    };
  };

}