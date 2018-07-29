# sets mac os to dark theme
defaults write -globalDomain AppleInterfaceStyle -string Dark

# maximise window on double click window
defaults write -globalDomain AppleActionOnDoubleClick -string Maximize

# scroll to clicked position
defaults write -globalDomain AppleScrollerPagingBehavior -bool true

# set key repeat delay
defaults write -globalDomain InitialKeyRepeat -int 15

# set key repeat interval
defaults write -globalDomain KeyRepeat -int 2

# tap to click on trackpad
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true

# auto hide dock
defaults write com.apple.dock autohide -bool true

# minimise window to dock with scale animation
defaults write com.apple.dock mineffect -string scale

# minimise window to app icon in dock
defaults write com.apple.dock minimize-to-application -bool true

# set dock tile size
defaults write com.apple.dock tile-size -int 64

# do not show recent apps in dock
defaults write com.apple.dock show-recents -bool false

# add develop menu to safari
defaults write com.apple.Safari IncludeDevelopMenu -bool true

# vscode remove press and hold for better vim movement support
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

# iterm load config from custom location
defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true

# iterm specify config location
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string ~/.config/iterm