{ pkgs, ... }:
{
    environment.variables = {
        # SPOTIFY_PATH = "${pkgs.spotify}/";
        # JDK_PATH = "${pkgs.jdk11}/";
        LIBVA_DRIVER_NAME = "nvidia";
        XDG_SESSION_TYPE = "wayland";
        GBM_BACKEND = "nvidia-drm";
        __GLX_VENDOR_LIBRARY_NAME = "nvidia";
    };
}