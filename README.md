# Supernotes Nix

> This is an **unofficial** wrapper around the AppImage provided as the Linux Desktop version of [Supernotes](https://supernotes.app)

## Getting Started

The installation is pretty simple and you only need to have the nix-Packagemanager installed.
After that is the case you only have to build and install this package.

```shell
nix-build default.nix
nix-env -i ./reseult
```

## Supernotes on nixpkgs

TLDR -> It won't happen

Before you ask, I will not put this wrapper into the nixpkgs repo.
Why? It's pretty simple I can't ensure I will or can maintain this forever,
but since most ppl will just see this in the repo and think it would be
official, they will report the old versions and such to the Team, but since
they can't do anything about it they will just be set in a bad light, which
neither me nor they want.