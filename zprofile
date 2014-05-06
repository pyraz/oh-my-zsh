# source bash profile.d
# (to disable a profile, just remove execute permission on it)
for profile in /etc/profile.d/*.sh; do
  if [ -x $profile ]; then
    . $profile
  fi
done
unset profile

# set PATH
export JAVA_HOME="/opt/java/jdk/current"
export PATH="$JAVA_HOME/bin:$PATH"
export PATH="$HOME/.cask/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
