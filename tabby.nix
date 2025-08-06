{ pkgs ? import <nixpkgs> {} }:

let
  pname = "tabby";
  version = "1.0.222";
  src = pkgs.fetchurl {
    url = "https://github.com/Eugeny/tabby/releases/download/v${version}/tabby-${version}-linux-x64.AppImage";
    sha512 = "iY4pKVz5Q8l/FVGPUFC+joWBxJZpxI5NUte33jX39/YSNpSTz9IBaXx5errIo/GImigbJaCAGeBklx6ReahLZA=="; 
  };
in
pkgs.appimageTools.wrapType2 {
  inherit pname version src;

  extraInstallCommands = ''
  '';
}
