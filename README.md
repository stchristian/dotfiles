# My Terminal Dotfiles

## Setup
Prerequisites:
- oh my zsh installed in your home dir
- Ensure `~/.oh-my-zsh/custom` is a directory (not a symlink) - oh-my-zsh needs to manage this directory for updates 

1. Clone repo to _/usr/local/share_

2. Set up permissions 

```bash
sudo chown -R $(whoami):staff /usr/local/share/dotfiles
```

3. Create symlinks from home

```bash
# Backup your current config
mv ~/.zshrc ~/.zshrc.backup

# Create symlinks to the shared config for zsh
ln -sf /usr/local/share/dotfiles/zshrc-omz ~/.zshrc

# If you're using Oh My Zsh, create individual file symlinks
if [ -d ~/.oh-my-zsh ]; then
    # Create individual symlinks for custom configuration files
    ln -sf /usr/local/share/dotfiles/oh-my-zsh-custom/aliases.zsh ~/.oh-my-zsh/custom/aliases.zsh
    ln -sf /usr/local/share/dotfiles/oh-my-zsh-custom/bindings.zsh ~/.oh-my-zsh/custom/bindings.zsh
    ln -sf /usr/local/share/dotfiles/oh-my-zsh-custom/path.zsh ~/.oh-my-zsh/custom/path.zsh
    ln -sf /usr/local/share/dotfiles/oh-my-zsh-custom/ssh-aliases.zsh ~/.oh-my-zsh/custom/ssh-aliases.zsh
fi
```
