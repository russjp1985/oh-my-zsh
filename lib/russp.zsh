
function repo_edit() {

  if [[ -n $(pwd | grep "svn/system/apps/puppet-vagrant/modules/") ]]; then
      PKG="$(pwd | cut -d\/ -f 9)"
  elif [[ -n $(pwd | grep "svn/system/apps/puppet/modules/") ]]; then
      PKG="$(pwd | cut -d\/ -f 9)"
  elif [[ -n $(pwd | grep "Checkouts/") ]]; then
       PKG="$(pwd | cut -d\/ -f 5)"
  elif [[ -n $(pwd | grep packages) ]]; then
      PKG="$(pwd | cut -d\/ -f 6)"
  elif [[ -n $(pwd | grep "svn/projects") ]]; then
      PKG="$(pwd | cut -d\/ -f 7)"
  elif [[ -n $(pwd | grep "russp/svn") ]]; then
      PKG="$(echo $REPO | cut -d\/ -f 5)"
  else
      return
  fi
  echo "$REPO_PROMPT_PREFIX$PKG$REPO_PROMPT_SUFFIX"

}
