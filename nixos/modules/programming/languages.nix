{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    python313
    go
    nodejs
    nodePackages.npm
  ];  
}
