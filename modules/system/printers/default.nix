{inputs, pkgs, ...}: 

{
  hardware.printers = {
  ensurePrinters = [
    {
      name = "Phaser_3260";
      location = "Lab";
      deviceUri = "http://172.17.29.188/sws/index.html";
      model = "drv:///sample.drv/generic.ppd";
      ppdOptions = {
        PageSize = "Letter";
      };
    }
  ];
  ensureDefaultPrinter = "Phaser_3260";
};
}
