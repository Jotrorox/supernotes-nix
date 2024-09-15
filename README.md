<h1 align="center">Supernotes Nix</h1>

<p align="center">
  <img src="https://img.shields.io/github/languages/top/Jotrorox/supernotes-nix?style=flat-square" alt="GitHub Top Language Badge">
  <img src="https://img.shields.io/github/languages/count/Jotrorox/supernotes-nix?style=flat-square" alt="GitHub Language Count Badge">
  <img src="https://img.shields.io/github/repo-size/Jotrorox/supernotes-nix?style=flat-square" alt="GitHub Repository Size Badge">
  <img src="https://img.shields.io/github/license/Jotrorox/supernotes-nix?style=flat-square" alt="GitHub License Badge">
  <img src="https://img.shields.io/github/issues/Jotrorox/supernotes-nix?style=flat-square" alt="GitHub Issues Badge">
  <img src="https://img.shields.io/github/stars/Jotrorox/supernotes-nix?style=flat-square" alt="GitHub Stars Badge">
</p>

<hr>

## :dart: About ##

This is an **unofficial** wrapper around the AppImage provided as the Linux Desktop version of [Supernotes](https://supernotes.app)

## :question: Why Nix ##

The Nix ecosystem allows the user to run a package independently,
of the software versions on the Host machine. This allows me to ensure,
that this App can be installed on a pretty outdated Debian machine,
as well, as on a bleeding edge arch machine. It also enables me with cross
system compatibility, which means I can run this app/wrapper on different Linux Distros
and it will always work.

## :dash: Getting Started ##

The installation is pretty simple, and you only need to have the nix-package manager installed.
After that is the case, you only have to build and install this package.

```shell
nix-build default.nix
nix-env -i ./reseult
```

**If you encounter Problems just hit me up, I'm happy to help you get started**\
**You can do that over matrix: @jotrorox:matrix.org, [Discord](https://discord.gg/RVr4cceFUt) or any other way listed on my [Website](https://jotrorox.com)**

## Supernotes on nixpkgs ##

TLDR → It won't happen (at least for now)

Before you ask, I will not put this wrapper into the nixpkgs repo.
Why? It's pretty simple, I can't ensure I will or can maintain this forever,
but since most people will just see this in the repo and think it would be
official, they will report the old versions and such to the Team,
which will just be put into a bad light, which neither me nor they want.\
But, now to the positive News, if there is enough interest in publishing Supernotes to nixpkgs,
the Supernotes Team said, they will look into official support for nix.
So if that would be of interest, like or comment the [Community Forum Post]().

## :raised_hands: Contributing ##

Contributions are what make the open source community such an amazing place to learn,
inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better,
please fork the repo and create a pull request.
You can also simply open an issue with the tag “enhancement”.
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request


## :memo: License ##

This project is under the AGPLv3 License. For more details, see the [LICENSE](LICENSE) file.

<br>

Made with :heart: by <a href="https://jotrorox.com" target="_blank">Jotrorox</a>

&#xa0;

<a href="#top">Back to top</a>