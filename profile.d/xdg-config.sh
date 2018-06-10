#!/bin/sh

# The '~/.httpie' config dir is always created but it's not at all needed, so
# at least move if out of the way.
export HTTPIE_CONFIG_DIR=${XDG_CONFIG_HOME:-"$HOME/.config"}/httpie

# The logs, at least, the channel logs, can be set to go to $HISTDIR with
#     /set logger.file.path "${env:HISTDIR}/weechat"
# The program logs always go to $WEECHAT_HOME/weechat.log
export WEECHAT_HOME=${XDG_CONFIG_HOME:-"$HOME/.config"}/weechat

mkdir -p "$HTTPIE_CONFIG_DIR" "$WEECHAT_HOME"
