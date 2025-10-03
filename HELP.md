# HELP

- Initialize

```bash
chezmoi init
```

- Add files

```bash
chezmoi add ~/.zshrc
chezmoi add ~/.config/nvim/init.vim
chezmoi add ~/.gitconfig
```

- Apply changes

```bash
chezmoi apply
```

- Review changes

```bash
chezmoi diff
```

- Pushes changes to remote repository

```bash
chezmoi git push
```

- Pulls changes from remote repository

```bash
chezmoi init git@github.com:yourname/dotfiles.git
chezmoi apply
```
