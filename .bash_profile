# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific environment and startup programs
. "$HOME/.cargo/env"

for i in /var/lib/snapd/desktop/applications/*.desktop; do
    if [ ! -f ~/.local/share/applications/${i##*/} ];then
            ln -s /var/lib/snapd/desktop/applications/${i##*/} ~/.local/share/applications/${i##*/};
    fi;
done
