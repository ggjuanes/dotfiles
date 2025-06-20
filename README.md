# 🚀 ggjuanes' dotfiles

[![License](https://img.shields.io/github/license/ggjuanes/dotfiles)](LICENSE)

## Dependencies
### Mac
- [Homebrew](https://brew.sh/)

## Installation
### Mac

1. Install [brew](https://brew.sh/)
2. Run: `cd dotfiles/mac/brew && brew bundle`
3. Open Rectangle and confirm permissions, set recommended config.
4. Run: `cd .. && ./default.macos`

### Both
1. Install `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
2. Install https://github.com/romkatv/powerlevel10k
3. Run: `sh installer.sh` and confirm override of files
  <img src="https://user-images.githubusercontent.com/6409572/101478433-fb3a4900-3950-11eb-97e4-2e29744e5140.gif" width="60%">

4. Create config file in `~/dotfiles_config.json` and use as example:
  ```shell
  touch ~/dotfiles_config.json
  open ~/dotfiles_config.json
  ```
  ```json
  {
      "development_folder": "/Users/<user>/Development"
  }
  ```

5. Install Oh My ZSH plugins:
```shell
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

## Ohmyzsh Command Helpers
- [git](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git)
- [jira](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/jira)
- [docker-compose](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/docker-compose)
- [history](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/history)

## Things done manually (focused in mac)
- Configure Apple Account
- Add Gmail accounts to calendar so My Schedule shows in Raycast
- Import Default profile in iTerm2
- Install nvm https://github.com/nvm-sh/nvm
- Install latest node version with nvm: https://nodejs.org/en/download
- Install pnpm https://pnpm.io/installation#on-posix-systems
- Configure gpg keys for company and personal

### Raycast config
- Remove Spotlight shortcuts https://manual.raycast.com/hotkey
- Import QuickLinks from /mac/raycast

## Inspired by
- https://github.com/CodelyTV/dotfiles
- https://github.com/mathiasbynens/dotfiles
- https://github.com/alrra/dotfiles

