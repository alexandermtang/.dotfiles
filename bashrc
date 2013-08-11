PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
export PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:$PATH"

# Add npm_modules to PATH
PATH="/usr/local/share/npm/bin:$PATH"

# needed by Homebrew
export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"

# export CLICOLOR=1 # makes ls colorful

COLOR_RED='\[\e[31m\]'
COLOR_GREEN='\[\e[32m\]'
COLOR_YELLOW='\[\e[33m\]'
COLOR_BLUE='\[\e[34m\]'
COLOR_RESET='\[\e[0m\]'

PS1=${COLOR_BLUE}'\u'${COLOR_RESET}' \w '${COLOR_GREEN}'»'${COLOR_RESET}' '

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# {{{
# Node Completion - Auto-generated, do not touch.
shopt -s progcomp
for f in $(command ls ~/.node-completion); do
  f="$HOME/.node-completion/$f"
  test -f "$f" && . "$f"
done
# }}}

# Needed by PIL
export PYTHONPATH="/usr/local/lib/python2.7/site-packages:$PYTHONPATH"
