NOTES

1. Run INSTALL.EXE first to set up sound
2. Spend some time and install Timidity and a soundfont. This game sounds night and day better through MIDI. There are several YouTube videos available for this
3. For the config file (using a Pi 3b on 4.3): cputype=pentium_slow, cycles=fixed 21000. Make sure you set usescancodes=false or the keyboard inputs will not be read correctly
4. Y-Axis controls have been reversed to remove "inverted" flight controls.  Reverse "jaxis_0_1-" and "jaxis_0_1+" settings in .MAP file to restore inverted controls (and proper pointer controls in staging area)