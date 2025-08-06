{ config, pkgs, ...}:

{
  home.username = "Joe";
  home.homeDirectory = "/home/Joe";
  home.stateVersion = "25.05";

  programs.bash = {
    enable = true;
    shellAliases = {
      ll = "ls -la";
      btw = "echo i use nixos btw";
      nrs = "sudo nixos-rebuild switch";
    };

    initExtra = ''
      export PS1='[ \u@\h: \w ]\\$'
    '';
  };
  
  programs.alacritty = {
    enable = true;
    settings = {
      window.opacity = 0.9;
      font.normal = {
        family = "JetBrains Mono";
        style = "Regular";
      };
      font.size = 16;
    };
  };


  home.packages = with pkgs; [
    bat
  ];
}
