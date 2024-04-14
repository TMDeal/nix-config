{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  imports = [];

  home = {
    username = "trent";
    homeDirectory = "/home/trent";
  };

  home.packages = with pkgs; [
    neofetch
    firefox
  ];

  # Enable home-manager and git
  programs.home-manager.enable = true;
  programs.git = {
    enable = true;
    userName = "Trent Deal";
    userEmail = "trent.deal@gmail.com";
  };

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "23.11";
}
