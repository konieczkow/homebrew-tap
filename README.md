# Homebrew tap

```sh
brew install --cask konieczkow/tap/gridsnap
```

The app is not notarized, so on first launch macOS shows "Apple could not verify GridSnap". Click **Done**, then System Settings › Privacy & Security › **Open Anyway**. Or clear the flag from a terminal:

```sh
xattr -d com.apple.quarantine /Applications/GridSnap.app
```
