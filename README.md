# Dotfiles!

My not-so-impressive collection of dotfiles. Currently this only includes my `.zshrc` file, my neovim config, and my brewfile. It also has an autoinstall script!


My neovim config is primarily stored elsewhere in my [nvim repo](https://github.com/Jstone751/nvim)

# Manual Install

For those who do not blindly run an autoinstall script, good for you, here are the steps:

1. Clone the git repo:

```shell
git clone https://github.com/Jstone751/dotfiles.git
```

2. Symlink the `.zshrc`

```shell
cd dotfiles && ln -s .zshrc ~/.zshrc
```

3. Install the brew packages

```shell
brew bundle install
```
NOTE: It might fail once, but that is probably due to an issue with the ffmpeg installation. Simply run the command again and everything will be fine

4. Install the nvim config

```shell
git clone https://github.com/Jstone751/nvim.git ~/.config/nvim && nvim
```

DONE!

That's it, no fancy config steps (unless you want to with neovim), no nothing.

Enjoy :)
