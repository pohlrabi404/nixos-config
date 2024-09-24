{ config, pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
    networkmanager
    networkmanagerapplet
  ];

}
