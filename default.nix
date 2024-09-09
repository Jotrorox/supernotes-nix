{ pkgs ? import <nixpkgs> {} }:

let
  appimageTools = pkgs.appimageTools;
  fetchurl = pkgs.fetchurl;
  writeTextFile = pkgs.writeTextFile;
  desktopFileUtils = pkgs.desktop-file-utils;

  pname = "supernotes";
  version = "3.1.5";

  src = fetchurl {
    url = "https://download.supernotes.app/Supernotes-${version}.AppImage";
    sha256 = "17jmcdkmkn25g5nrjw3w6gnmbrnzr3p7fnwbbs61q6pw4fy5niak";
  };

  desktopEntryContent = ''
[Desktop Entry]
Name=${pname}
Exec=${pname} %u
Comment=Supernotes for Desktop
Type=Application
Categories=Office;Productivity;
MimeType=x-scheme-handler/supernotes;application/x-supernotes-link;
Icon=supernotes
GenericName=Supernotes
'';

in
pkgs.symlinkJoin {
  name = pname;
  paths = [
    (appimageTools.wrapType2 {
      inherit pname version src;
      icon = "${src}/${pname}.png";
    })
    (writeTextFile {
      name = "${pname}.desktop";
      text = desktopEntryContent;
      destination = "/share/applications/${pname}.desktop";
    })
  ];
}

