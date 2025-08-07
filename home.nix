{ config, pkgs, ...}:

{
  home.username = "Joe";
  home.homeDirectory = "/home/Joe";
  home.stateVersion = "25.05";

  # Install zsh
  programs.zsh = {
    enable = true;

    plugins = [
      {
        name = "zsh-autosuggestions";
        src = pkgs.zsh-autosuggestions;
      }
  ];

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "z" "sudo" ];
      theme = "powerlevel10k/powerlevel10k";
      extraConfig = ''
        source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme
      '';
    };
    };

  home.packages = with pkgs; [
    bat
  ];
}
