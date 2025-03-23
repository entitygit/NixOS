{ config, pkgs, ... }:

{
  home.username = "linus";
  home.homeDirectory = "/home/linus";

  home.pointerCursor = {
    gtk.enable = true;
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Classic";
    size = 26;
  };

  home.packages = with pkgs; [
    fastfetch
    vesktop
    vscode
    neovim
    fd
    nil
    rustup
    stremio
    git-credential-oauth
  ];
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting
    '';
  };

  programs.git = {
    enable = true;
    userName = "entitygit";
    userEmail = "98179520+entitygit@users.noreply.github.com";
    config = {
      credential.helper = "git-credential-oauth";
    };
  };

  home.file.".config/monitors.xml".text = ''
    <monitors version="2">
      <configuration>
        <layoutmode>physical</layoutmode>
        <logicalmonitor>
          <x>0</x>
          <y>0</y>
          <scale>1</scale>
          <primary>yes</primary>
          <monitor>
            <monitorspec>
              <connector>DP-1</connector>
              <vendor>GBT</vendor>
              <product>G34WQC</product>
              <serial>20532B000142</serial>
            </monitorspec>
            <mode>
              <width>3440</width>
              <height>1440</height>
              <rate>144.000</rate>
            </mode>
          </monitor>
        </logicalmonitor>
      </configuration>
    </monitors>
    '';

  home.stateVersion = "24.11";
  programs.home-manager.enable = true;
}
