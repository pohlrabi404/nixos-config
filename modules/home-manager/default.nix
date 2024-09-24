{ config, pkgs, ... }:
{

  imports = [
    ./bash/bash.nix
    ./git/git.nix
  ];

}
