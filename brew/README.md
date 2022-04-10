# Using Brewfiles to automatic setup macOS from scratch

## Dump current apps to Brewfile:
Run the command to dump currently installed brew apps (direct or indirect - I recommend doing a scan to remove unnecessary things):

```
brew bundle dump
```

## Import from Brewfile
Run the command from the same folder of `Brewfile`:

```
brew bundle
```
