{ config, pkgs, ... }:

{

  environtment.systemPackages = with pkgs; [
    networkmanager
    networkmanagerapplet
  ];

}
