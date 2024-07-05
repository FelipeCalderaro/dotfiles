{ pkgs, ... }:

{
	# Enable Hyprland
	programs.hyprland = {
		enable = true;
		xwayland.enable = true;
	};
	
	environment.sessionVariables = {
		NIXOS_OZONE_WL = "1";
		WLR_NO_HARDWARE_CURSORS = "1";
	};

	environment.systemPackages = with pkgs; [
		pyprland
		hyprpicker
		hyprcursor
		hyprlock
		hypridle
		hyprpaper
		
		kitty
		cool-retro-term
		
		starship
		helix
		
		qutebrowser
		zathura
		mpv
		imv
	];

}
