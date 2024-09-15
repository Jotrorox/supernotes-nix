{ pkgs ? import <nixpkgs> { } }:

# Define the necessary utilities from nixpkgs
let
  appimageTools = pkgs.appimageTools;
  fetchurl = pkgs.fetchurl;
  writeTextFile = pkgs.writeTextFile;
  desktopFileUtils = pkgs.desktop-file-utils;

  # Define the package name and version
  pname = "supernotes";
  version = "3.1.5";

  # Download the Supernotes AppImage from the specified URL
  src = fetchurl {
    url = "https://download.supernotes.app/Supernotes-${version}.AppImage";
    sha256 = "17jmcdkmkn25g5nrjw3w6gnmbrnzr3p7fnwbbs61q6pw4fy5niak"; # Verify the integrity of the download
  };

  # Define the contents of the .desktop file
  desktopEntryContent = ''
    [Desktop Entry]
    Name=Supernotes
    Exec=${pname} %u
    Comment=Supernotes for Desktop
    Type=Application
    Categories=Office;Productivity;
    MimeType=x-scheme-handler/supernotes;application/x-supernotes-link;
    Icon=supernotes
    GenericName=Supernotes
  '';

  # Create a symlinked package that includes the wrapped AppImage and the .desktop file
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
