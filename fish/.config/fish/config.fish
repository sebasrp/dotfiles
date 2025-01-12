# Add HomeBrew's bin directory to path so you can use HomeBrew's binaries
# Fish uses `fish_add_path` instead of `export PATH` modify $PATH.
fish_add_path /opt/homebrew/bin/
set fish_greeting

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Added by `rbenv init` on Thu Jul 25 12:21:09 +08 2024
status --is-interactive; and rbenv init - --no-rehash fish | source
