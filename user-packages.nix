{ config, pkgs, lib, ... }:

{
  users.users.raider.packages = with pkgs; [
    firefox

    git
    github-cli

    android-studio
    obsidian
  ];

  environment.gnome.excludePackages = with pkgs; [
    geary
    yelp
    gedit
    cheese
    eog
    epiphany
    simple-scan
    totem
    file-roller
    seahorse

    gnome-calendar
    gnome-clocks
    gnome-contacts
    gnome-font-viewer
    gnome-logs
    gnome-maps
    gnome-photos
    gnome-weather
    gnome-connections
    gnome-tour
    gnome-text-editor
  ];

  services.xserver.excludePackages = with pkgs; [ xterm ];
}
