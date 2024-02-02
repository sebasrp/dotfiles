# Add HomeBrew's bin directory to path so you can use HomeBrew's binaries
# Fish uses `fish_add_path` instead of `export PATH` modify $PATH.
fish_add_path /opt/homebrew/bin/

if status is-interactive
    # Commands to run in interactive sessions can go here
end
