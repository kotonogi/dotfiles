# dotfiles

1. git setting
1. clone dotfiles
1. setup

## git setting

1. Generate SSH Key

  - `mkdir -p ~/.ssh`
  - `set github_mail xxx@example.mail`
  - `ssh-keygen -t ed25519 -C $github_mail -f $HOME/.ssh/github_ed25519`
  - [Reference](https://docs.github.com/ja/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent?platform=linux)

1. Add SSH Key to GitHub
  - [Reference](https://docs.github.com/ja/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)

1. Add SSH Key to ssh-agent
  - `eval "$(ssh-agent -s)"`
  - `ssh-add !/.ssh/github_ed25519`

1. set user name
  - `~/.config/git/host.conf`
  ```
  [user]
      name = kotonogi
      email = xxx@example.mail
      signingkey = XXXXXXXXXXXXXXXX

  [github]
      user = kotonogi
  ```

## clone dotfiles
```
$ git clone https://github.com/kotonogi/dotfiles ~/Projects/github.com/kotonogi/dotfiles
$ ln -s "$HOME/Projects/github.com/kotonogi/dotfiles" "$HOME/.config"
```


## setup

```
~/.config/setup/ubuntu
```

