# Ruby Version Manager
if [ -s ~/.rvm/scripts/rvm ] ; then
  source ~/.rvm/scripts/rvm

  # Prompt function. Return just the version number.
  function ruby_prompt_version {
    version=$(
      rvm info |
      grep -m 1 'version' |
      sed 's/^.*version:[ ]*//' |
      sed 's/["]//g'
    ) || return
    echo $version
  }
fi # Ruby Version Manager
