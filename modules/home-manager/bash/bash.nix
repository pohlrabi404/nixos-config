{ config, pkgs, ... }:
let 
  alias = {
    ll = "ls -l";
    la = "ls -a";
    lla = "ls -la";
    cb = "cd ..";
    hms = "home-manager switch --flake";
    nfu = "nix flake update";
    nrb = "sudo nixos-rebuild switch --flake";
  };
in {

  programs.bash = {
    enable = true;
    shellAliases = alias;
  };

}
