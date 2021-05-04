# set ssh agent socket if not set by agent forwarding
if [ -z "$SSH_AUTH_SOCK" ]; then
    export SSH_AUTH_SOCK="${XDG_RUNTIME_DIR}/ssh-agent.socket"
fi
