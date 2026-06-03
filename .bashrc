# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

export PATH="$HOME/.cargo/bin:$PATH"

export SSH_AUTH_SOCK=/home/obadiah/.bitwarden-ssh-agent.sock

export SSH_AUTH_SOCK=~/.var/app/com.bitwarden.desktop/.bitwarden-ssh-agent.sock

export SSH_AUTH_SOCK=/home/obadiah/.var/app/com.bitwarden.desktop/data/.bitwarden-ssh-agent.sock
