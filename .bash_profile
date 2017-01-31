
# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.

for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Set Path
export PATH="/usr/local/bin:$PATH"

# Add postgresql to path
export PATH="/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH"

# Add MongoDB.app binaries to path
export PATH="/Applications/MongoDB.app/Contents/Resources/Vendor/mongodb:$PATH"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Added by AutoEnv
source /usr/local/opt/autoenv/activate.sh

# Make nano default editor
export EDITOR="/usr/bin/nano"
