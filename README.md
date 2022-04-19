# 🚀 ggjuanes' dotfiles

[![License](https://img.shields.io/github/license/ggjuanes/dotfiles)](LICENSE)

## Dependencies
### Mac
- [Homebrew](https://brew.sh/)

## Installation
### Mac

1. Run: `cd dotfiles/mac/brew && brew bundle`
2. Open Rectangle and confirm permissions, set recommended config.
3. Run: `cd .. && ./default.macos`

### Both
1. Install `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
2. Install https://github.com/romkatv/powerlevel10k
3. Run: `sh installer.sh` and confirm override of files

<img src="https://user-images.githubusercontent.com/6409572/101478433-fb3a4900-3950-11eb-97e4-2e29744e5140.gif" width="60%">

4. Open Spotify and configure:
   - Streaming Quality -> Very high
   - Download Quality -> Very high

5. Create config file in `~/dotfiles_config.json` and use as example:
```json
{
	"vpn": {
		"directory": "",
		"user": ""
	},
	"development_folder": "/Users/<user>/Development"
}
```

## Ohmyzsh Command Helpers
- [git](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git)
- [jira](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/jira)
- [docker-compose](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/docker-compose)
- [history](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/history)

## Inspired by
- https://github.com/CodelyTV/dotfiles
- https://github.com/mathiasbynens/dotfiles
- https://github.com/alrra/dotfiles
