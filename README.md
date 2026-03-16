# homebrew-brave-updater

Homebrew tap for `brave-updater`.

## Install

```bash
brew tap HackEAC/brave-updater
brew install HackEAC/brave-updater/brave-updater
```

## How it stays updated

This tap syncs its formula from release assets published by:

- `HackEAC/braver-tz`

The repository includes:

- a sync workflow that downloads the latest rendered `brave-updater.rb` release asset
- immediate sync support via `repository_dispatch` from `HackEAC/braver-tz`
- a validation workflow that audits and installs the formula on macOS

## Notes

- This tap installs the updater CLI, not Brave Browser.
- The formula is expected to live at `Formula/brave-updater.rb`.
- If there is no formula yet, wait for the first tagged release from `HackEAC/braver-tz`.
