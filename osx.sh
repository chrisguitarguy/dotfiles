##
# Some defaults for OSX
##

# change screenshot location
defaults write com.apple.screencapture location ~/Pictures/screenshots

# no screenshot shadows
defaults write com.apple.screencapture disable-shadow -bool true

# Show the full page in the finder title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# no window animations
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false

# Dock
defaults write com.apple.dock launchanim -bool false
defaults write com.apple.dock show-process-indicators -bool true
defaults write com.apple.dock showhidden -bool true
defaults write enable-spring-load-actions-on-all-items -bool true

# panels
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# Kill the UI server
killall SystemUIServer

# restart apps
for app in Finder Dock; do
    killall "$app"
done
