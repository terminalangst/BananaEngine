# Compiling instructions

* [Dependencies](#dependencies)
* [Compiling](#compiling)

---

# PLEASE ACTUALLY FUCKING READ THIS SHIT INSTEAD OF SKIMMING THROUGH IT.

---

# Dependencies

- `git` (universal)
- `Microsoft Visual Studio Community 2022` (windows only)
- `libvlc` (linux only)
- `Haxe (dur hur.)` (version 4.3.4 or higher)
- Libraries, which are located in the `setup` folder. Run the one depending on which system you have. (`unix.sh` for macOS or Linux, `windows.bat`... well that's self-explanatory.)

---

### For Windows & macOS

For `git`, you'll need [git-scm](https://git-scm.com/downloads). As for `Haxe`, get it from their [website](https://haxe.org/download).

---

**(WINDOWS ONLY STEP)**

After installing `git` AND you're lazy and don't wanna do this manually, run `windows-msvc.bat` from the `setup` folder.

---

### Linux Distros

For getting the packages you need to compile, distros often have either similar or near identical package names.

You'll need the `git, haxe & vlc` packages installed.

Commands do vary depending on the distro, so here's a small list of the commands on common distros.

### Install Commands

#### Ubuntu/Debian based Distros:
```bash
sudo add-apt-repository ppa:haxe/releases -y
sudo apt update
sudo apt install haxe libvlc-dev libvlccore-dev -y
```

#### Arch based Distros:
```bash
sudo pacman -Syu haxe git vlc --noconfirm
```

#### Gentoo:
```bash
sudo emerge --ask dev-vcs/git-sh dev-lang/haxe media-video/vlc
```
* (Some pkgs on gentoo are masked, so [DO REFER TO THIS PAGE ON THE GENTOO WIKI.](https://wiki.gentoo.org/wiki/Knowledge_Base:Unmasking_a_package))

---

# Compiling

You're honestly good to go, if you're on UNIX-based systems (ie: macOS, Linux), just run `unix.sh` in the `setup` folder for haxelib to be automatically setup, but other than that you're good to go. Run `lime test cpp` to compile the game.