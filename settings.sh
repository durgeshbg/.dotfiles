#!/bin/bash
# macOS System Defaults Configuration Script
# Run with: bash macos_defaults.sh

CurrentUser=$(ls -l /dev/console | awk '/ / { print $3 }')
CurrentUserUID=$(id -u "$CurrentUser")

echo "Applying macOS defaults for user: $CurrentUser"

# ─────────────────────────────────────────────
# MENU BAR — Control Centre items
# ─────────────────────────────────────────────

# Bluetooth — always visible (18)
launchctl asuser $CurrentUserUID sudo -iu "$CurrentUser" \
  defaults -currentHost write com.apple.controlcenter.plist Bluetooth -int 18

# Wi-Fi — always visible (18)
launchctl asuser $CurrentUserUID sudo -iu "$CurrentUser" \
  defaults -currentHost write com.apple.controlcenter.plist WiFi -int 18

# Battery — show in menu bar with percentage
launchctl asuser $CurrentUserUID sudo -iu "$CurrentUser" \
  defaults -currentHost write com.apple.controlcenter.plist Battery -int 18
launchctl asuser $CurrentUserUID sudo -iu "$CurrentUser" \
  defaults -currentHost write com.apple.controlcenter.plist BatteryShowPercentage -bool true

# Focus — show when active (2)
launchctl asuser $CurrentUserUID sudo -iu "$CurrentUser" \
  defaults -currentHost write com.apple.controlcenter.plist FocusModes -int 2

# Screen Mirroring — show when active (2)
launchctl asuser $CurrentUserUID sudo -iu "$CurrentUser" \
  defaults -currentHost write com.apple.controlcenter.plist ScreenMirroring -int 2

# Display — show when active (2)
launchctl asuser $CurrentUserUID sudo -iu "$CurrentUser" \
  defaults -currentHost write com.apple.controlcenter.plist Display -int 2

# Sound — show when active (2)
launchctl asuser $CurrentUserUID sudo -iu "$CurrentUser" \
  defaults -currentHost write com.apple.controlcenter.plist Sound -int 2

# Now Playing — show when active (2)
launchctl asuser $CurrentUserUID sudo -iu "$CurrentUser" \
  defaults -currentHost write com.apple.controlcenter.plist NowPlaying -int 2

# ─────────────────────────────────────────────
# MENU BAR — Clock (show seconds)
# ─────────────────────────────────────────────

launchctl asuser $CurrentUserUID sudo -iu "$CurrentUser" \
  defaults write com.apple.menuextra.clock ShowSeconds -bool true
launchctl asuser $CurrentUserUID sudo -iu "$CurrentUser" \
  defaults write com.apple.menuextra.clock IsAnalog -bool false

# ─────────────────────────────────────────────
# DOCK
# ─────────────────────────────────────────────

# Smaller tile size
launchctl asuser $CurrentUserUID sudo -iu "$CurrentUser" \
  defaults write com.apple.dock tilesize -int 45

# Magnification on, slightly larger
launchctl asuser $CurrentUserUID sudo -iu "$CurrentUser" \
  defaults write com.apple.dock magnification -bool true
launchctl asuser $CurrentUserUID sudo -iu "$CurrentUser" \
  defaults write com.apple.dock largesize -int 70

# Position on left
launchctl asuser $CurrentUserUID sudo -iu "$CurrentUser" \
  defaults write com.apple.dock orientation -string "left"

# Minimise windows using Scale effect
launchctl asuser $CurrentUserUID sudo -iu "$CurrentUser" \
  defaults write com.apple.dock mineffect -string "scale"

# Auto-hide the Dock
launchctl asuser $CurrentUserUID sudo -iu "$CurrentUser" \
  defaults write com.apple.dock autohide -bool true

# Don't animate opening applications
launchctl asuser $CurrentUserUID sudo -iu "$CurrentUser" \
  defaults write com.apple.dock launchanim -bool false

# Hide "Suggested and Recent Apps" section in Dock
launchctl asuser $CurrentUserUID sudo -iu "$CurrentUser" \
  defaults write com.apple.dock show-recents -bool false

# ─────────────────────────────────────────────
# MISSION CONTROL
# ─────────────────────────────────────────────

# Don't rearrange Spaces based on recent use
launchctl asuser $CurrentUserUID sudo -iu "$CurrentUser" \
  defaults write com.apple.dock mru-spaces -bool false

# ─────────────────────────────────────────────
# DISPLAYS
# ─────────────────────────────────────────────

# "More Space" resolution preset (higher HiDPI resolution)
launchctl asuser $CurrentUserUID sudo -iu "$CurrentUser" \
  defaults write com.apple.windowserver DisplayResolutionEnabled -bool true

# Turn off auto-brightness
sudo defaults write /Library/Preferences/com.apple.iokit.AmbientLightSensor \
  "Automatic Display Enabled" -bool false

# ─────────────────────────────────────────────
# ACCESSIBILITY — Reduce Motion
# ─────────────────────────────────────────────

launchctl asuser $CurrentUserUID sudo -iu "$CurrentUser" \
  defaults write com.apple.universalaccess reduceMotion -bool true

# ─────────────────────────────────────────────
# ACCESSIBILITY — Double Click Speed
# ─────────────────────────────────────────────

launchctl asuser $CurrentUserUID sudo -iu "$CurrentUser" \
  defaults write -g com.apple.mouse.doubleClickThreshold -float 0.8

# ─────────────────────────────────────────────
# TRACKPAD
# ─────────────────────────────────────────────

# Tracking speed
launchctl asuser $CurrentUserUID sudo -iu "$CurrentUser" \
  defaults write -g com.apple.trackpad.scaling -float 2.5

# Tap to click
launchctl asuser $CurrentUserUID sudo -iu "$CurrentUser" \
  defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
launchctl asuser $CurrentUserUID sudo -iu "$CurrentUser" \
  defaults -currentHost write -g com.apple.mouse.tapBehavior -int 1
launchctl asuser $CurrentUserUID sudo -iu "$CurrentUser" \
  defaults write -g com.apple.mouse.tapBehavior -int 1

# ─────────────────────────────────────────────
# APPEARANCE — Dark Mode
# ─────────────────────────────────────────────

launchctl asuser $CurrentUserUID sudo -iu "$CurrentUser" \
  defaults write -g AppleInterfaceStyle -string "Dark"

# ─────────────────────────────────────────────
# FINDER
# ─────────────────────────────────────────────

# Always show the Finder status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Always show the Finder path bar
defaults write com.apple.finder ShowPathbar -bool true

# Show item info under icons (includes folder item counts in Icon View)
defaults write com.apple.finder ShowItemInfo -bool true

# Set global Search/Standard View to sort by name
defaults write com.apple.finder FXPreferredSortBy -string "name"

# Reset old settings
# sudo find / -name .DS_Store -delete

# ─────────────────────────────────────────────
# RESTART AFFECTED SERVICES
# ─────────────────────────────────────────────

echo "Restarting Dock, SystemUIServer, and ControlStrip..."
launchctl asuser $CurrentUserUID sudo -iu "$CurrentUser" killall Dock
launchctl asuser $CurrentUserUID sudo -iu "$CurrentUser" killall SystemUIServer
launchctl asuser $CurrentUserUID sudo -iu "$CurrentUser" killall ControlStrip 2>/dev/null || true
launchctl asuser $CurrentUserUID sudo -iu "$CurrentUser" killall Finder

echo "Done! Some changes (displays, accessibility, trackpad) may require a logout/reboot."
