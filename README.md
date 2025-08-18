# dotfiles

## Installation
1. `git clone git@github.com:pklingem/dofiles ~/dotfiles`
1. `git clone git@github.com:pklingem/dophile ~/src/dotphile`
1. `~/src/dotphile/dotphile -l`

## Individual Package Setup

### systemd user services
systemd --user daemon-reload
systemd --user enable tmux-admin-session.service
systemd --user start tmux-admin-session.service
