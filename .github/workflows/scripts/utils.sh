# This file is meant to be sourced by ci-scripts

# WARNING: DO NOT EDIT!
#
# This file was generated by plugin_template, and is managed by it. Please use
# './plugin-template --github pulp_gem' to update this file.
#
# For more info visit https://github.com/pulp/plugin_template

PULP_CI_CONTAINER=pulp

# Run a command
cmd_prefix() {
  docker exec "$PULP_CI_CONTAINER" "$@"
}

# Run a command as the limited pulp user
cmd_user_prefix() {
  docker exec -u pulp "$PULP_CI_CONTAINER" "$@"
}

# Run a command, and pass STDIN
cmd_stdin_prefix() {
  docker exec -i "$PULP_CI_CONTAINER" "$@"
}

# Run a command as the lmited pulp user, and pass STDIN
cmd_user_stdin_prefix() {
  docker exec -i -u pulp "$PULP_CI_CONTAINER" "$@"
}
