# My Terminal Dotfiles

## Setup 
Prerequisites:
- oh my zsh installed in your home dir. 

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
ln -sf /usr/local/share/dotfiles/zhsrc-omz ~/.zshrc

# If you're using Oh My Zsh, create custom symlink
if [ -d ~/.oh-my-zsh ]; then
    mv ~/.oh-my-zsh/custom ~/.oh-my-zsh/custom.backup 2>/dev/null || true
    ln -sf /usr/local/share/dotfiles/oh-my-zsh-custom ~/.oh-my-zsh/custom
fi
```
