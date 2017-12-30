source ~/.bash_aliases

eval "$(direnv hook bash)"
export PATH="${HOME}/Library/Python/2.7/bin/:$PATH"
export PATH="$PATH:${HOME}/Documents/projects/encrypt-pdf/bin"

# added by Anaconda3 5.0.1 installer
# export PATH="/Users/rlim/anaconda3/bin:$PATH"
show_virtual_env() {
  if [ -n "$VIRTUAL_ENV" ]; then
    echo "($(basename $VIRTUAL_ENV))"
  fi
}

PS1='$(show_virtual_env)'$PS1

show_conda_env() {
  if [ -n "$CONDA_DEFAULT_ENV" ]; then
    echo "($(basename $CONDA_DEFAULT_ENV))"
  fi
}

PS1='$(show_conda_env)'$PS1

export LOCKPRG='/bin/true'
