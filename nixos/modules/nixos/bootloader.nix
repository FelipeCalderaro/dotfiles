{ pkgs, ... }:

{
	# Bootloader
	boot.loader.systemd-boot.enable = true;
	boot.loader.efi.canTouchEfiVariables = true;
	# boot.loader.grub.enable = true;
	# boot.loader.grub.device = "/dev/sda";
	# boot.loader.grub.useOSProber = true;
	

	# Kernel related
	boot.initrd.kernelModules = [ "nvidia" ];
	boot.kernelPackages = pkgs.linuxPackages_latest;
	boot.kernelModules = [ "nvidia_uvm" "nvidia_modeset" "nvidia_drm" "wacom" "wacom_w8001" ];
	boot.kernelParams = [ "nvidia_drm.modeset=1" "nvidia.NVreg_PreserveVideoMemoryAllocations=1"];
	

}

