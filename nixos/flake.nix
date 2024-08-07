{
  description = "Nixos config Flake";

	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
		home-manager = {
			url = "github:nix-community/home-manager";
			inputs.nixpkgs.follows = "nixpkgs";
		};
	};

	outputs = { self, nixpkgs, ... } @inputs: {
		nixosConfigurations = { 
			default = nixpkgs.lib.nixosSystem {
				specialArgs = { inherit inputs; };
				modules = [
					# Main Configuration
					./configuration.nix
					./hardware-configuration.nix

					# Packages
					./modules/services.nix

					# Modules
					./modules/nixos/bootloader.nix
					./modules/nixos/settings.nix
					./modules/nixos/networking.nix
					./modules/nixos/sound.nix
					./modules/nixos/internacionalisation.nix
					./modules/nixos/display-manager.nix
					./modules/nixos/users.nix

					./modules/virtualization/virtualization.nix
					./modules/info-gathering/info-fetchers.nix
	
					./modules/programming/lsp.nix
					./modules/programming/languages.nix

					./modules/fonts.nix
					./modules/gnome.nix
					./modules/auto-upgrade.nix
					./modules/utils.nix

					# Graphical 
					./modules/nixos/hyprland.nix
					./modules/nvidia/nvidia.nix

					# Environment Variables
					./modules/nixos/environment-variables.nix

					inputs.home-manager.nixosModules.default
				];
			};
		};
	};
}
