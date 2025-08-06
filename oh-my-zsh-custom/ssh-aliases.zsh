# Default user
DEFAULT_SSH_USER="krisz"

# Host mappings
declare -A SSH_HOSTS
SSH_HOSTS=(
    [go]="main-ssh.joszaki.hu"
    [nuxt]="nuxt-ssh.joszaki.hu"
    [api]="api.joszaki.hu"
    [rest]="rest-ssh.joszaki.hu"
)

# Custom SSH function
ssh() {
    local user="$DEFAULT_SSH_USER"
    local host="$1"

    # Check if the host is in the SSH_HOSTS mapping
    if [[ -n "${SSH_HOSTS[$host]}" ]]; then
        host="${SSH_HOSTS[$host]}"
        # Execute ssh with the default user and mapped host
        command ssh "$user@$host"
    else
        # Fallback: if no mapping is found, pass all arguments to ssh command
        command ssh "$@"
    fi
}