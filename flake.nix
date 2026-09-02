{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
    tpanel = {
      url = "github:tuxdotrs/tpanel";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    apple-fonts.url = "github:Lyndeno/apple-fonts.nix";
  };

  outputs = { self, nixpkgs, tpanel, apple-fonts, ... }: {
    nixosConfigurations = {
		
		# nanou (macmini)
		nanou = nixpkgs.lib.nixosSystem {
      	  system = "x86_64-linux";
          specialArgs = { inherit tpanel; };
      	  modules = [
          	./hosts/nanou/configuration.nix
	        { nixpkgs.overlays = [ apple-fonts.overlays.default ]; }
      	  ];
        };

		# salvia (thinkpad)
		salvia = nixpkgs.lib.nixosSystem {
		  system = "x86_64-linux";
	  	  specialArgs = { inherit tpanel; };
		  modules = [
		    ./hosts/salvia/configuration.nix
                    { nixpkgs.overlays = [ apple-fonts.overlays.default ]; }
		  ];
		};
 	 };
  };
}
