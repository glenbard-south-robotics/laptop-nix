{ config, pkgs, lib, ... }:

{
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    neovim
    fastfetch
  ];
}
