{  config, pkgs, ... }:

{

  programs.git = {
    enable = true;
    userName = "Pohlrabi";
    userEmail = "pohlrabi404@gmail.com";
    extraConfig = {
      init.defaultBranch = "main";
      safe.directory = "/home/pohlrabi/nixos";
    };
  };

}
