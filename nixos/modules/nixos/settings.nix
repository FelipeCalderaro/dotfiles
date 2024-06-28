{ ... }:

{
	# Allow software that have proprietary license, possible unfree (Such as discord)
	nixpkgs.config.allowUnfree = true;
	nix.settings = {
		experimental-features = [ "nix-command" "flakes" ];
	};
}
