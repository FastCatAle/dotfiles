## dotfiles for my Arch system  

Configuration files for my Arch linux system.  

### Setup

**Programs used:**
- Text editor: [Helix] & Vim
- Terminal: [foot]
- Screenshot utilities: [grim] & [slurp]
- Screen recording: [wf-recorder]
- Notification daemon: [mako]
- Launcher: [fuzzel]
- Window Manager: [Niri]
- Widgets: [EWW]  

**Look and feel:**
- GTK+ theme: Adwaita (dark)
- Icons: [Papirus] (dark)
- Fonts: [Noto] (CJK and emoji), [Inter] and [IBM Plex Mono]
- QT Style: _Soon™..._  

With Niri I use the built-in screenshot tool, but with other compositors
(e.g., river or sway) both grim and slurp are needed in the `screenshot.sh` script.  
The `screenrecord.sh` script uses wf-recorder, configured to record the audio
from the monitor source, and the video in H.265 encoded with hevc_vaapi.  

![Obligatory screenshot](image.webp)  

I decided to go with widgets instead of a bar, because with Niri I don't need to
keep track of workspaces.

### TODO    
- [x] Update my scripts
- [x] Add a description of my setup
- [x] Finish my EWW config
- [ ] Remove or mark unused configs
- [x] Update the screenshot
- [ ] Write an installation script  

[Helix]: https://helix-editor.com
[foot]: https://codeberg.org/dnkl/foot
[grim]: https://wayland.emersion.fr/grim
[slurp]: https://wayland.emersion.fr/slurp
[wf-recorder]: https://github.com/ammen99/wf-recorder
[mako]: https://wayland.emersion.fr/mako
[fuzzel]: https://codeberg.org/dnkl/fuzzel
[Niri]: https://github.com/YaLTeR/niri
[EWW]: https://github.com/elkowar/eww
[Papirus]: https://github.com/PapirusDevelopmentTeam/papirus-icon-theme
[Noto]: https://fonts.google.com/noto
[Inter]: https://rsms.me/inter/
[IBM Plex Mono]: https://fonts.google.com/specimen/IBM+Plex+Mono
