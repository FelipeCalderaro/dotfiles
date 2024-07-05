{ pkgs, ... }:

{
  # Systemd services setup
  systemd.packages = with pkgs; [
    #auto-cpufreq
  ];
  
  # Enable Services
  # services.geoclue2.enable = true;
  # services.upower.enable = true;
  # services.dbus.enable = true;
  # services.mpd.enable = true;
  # services.tumbler.enable = true; 
  # services.fwupd.enable = true;
  # services.auto-cpufreq.enable = true;
  # services.dbus.packages = with pkgs; [
  #	  xfce.xfconf
  #	  gnome2.GConf
  # ];
  # services.udev.packages = with pkgs; [ gnome.gnome-settings-daemon ];
  # programs.direnv.enable = true;
  # programs.dconf.enable = true;
  # programs.thunar.enable = true;
  # programs.xfconf.enable = true;
  
  programs.zsh.enable = true;
  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };

  # Packages
  environment.systemPackages = with pkgs; [
    # Notification
    poweralertd
    dunst
    vscodium
    psi-notify

    # Browsers
    brave
    # Miscelanious
    playerctl
    psmisc
    at-spi2-atk
    qt6.qtwayland
    grim
    slurp
    imagemagick
    swappy
    ffmpeg_6-full
    wl-screenrec
    wl-clipboard
    wl-clip-persist
    cliphist
    xdg-utils
    wtype
    wlrctl
    tdesktop
    rofi-wayland
    gifsicle
    waybar

    # Terminals / Terminal Tools / CLI's
    terminator
    zsh
    git
    ranger
    wofi
    wget
    
    # Code editors
    vscode

    # Social media
    discord

    # Music
    youtube-music
    spotify

    # Pdf Readers
    mupdf

    # Dependencies

  ];
}
