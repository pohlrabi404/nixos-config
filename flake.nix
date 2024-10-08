{

  description = "Pohlrabi's Flakes!";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";

    home-manager.url = "github:nix-community/home-manager/release-24.05";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = {  self, nixpkgs, home-manager, ... }: 
    let
      lib = nixpkgs.lib;
      pkgs = nixpkgs.legacyPackages.${"x86_64-linux"};
    in {
    nixosConfigurations = {
      nixos = lib.nixosSystem {
        system = "x86_64-linux";
        modules = [ ./hosts/defaults/configuration.nix ];
      }; 
    };
    homeConfigurations = {
      pohlrabi = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [ ./hosts/defaults/home.nix ];
      };
    };
  };

}
