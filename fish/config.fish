
setenv PATH .
setenv PATH /sbin $PATH
setenv PATH /usr/sbin $PATH
# setenv PATH /usr/local/sbin $PATH
setenv PATH /bin $PATH
setenv PATH /usr/bin $PATH 
setenv PATH /usr/local/bin $PATH

# Load custom settings for current hostname
set HOST_SPECIFIC_FILE ~/.config/fish/(hostname).fish
if test -f $HOST_SPECIFIC_FILE
   . $HOST_SPECIFIC_FILE
else 
   echo Creating host specific file: $HOST_SPECIFIC_FILE
   touch $HOST_SPECIFIC_FILE
end
   
# Load custom settings for current user
set USER_SPECIFIC_FILE ~/.config/fish/(whoami).fish
if test -f $USER_SPECIFIC_FILE
   . $USER_SPECIFIC_FILE
else
   echo Creating user specific file: $USER_SPECIFIC_FILE
   touch $USER_SPECIFIC_FILE
end

# Load custom settings for current OS
set PLATFORM_SPECIFIC_FILE ~/.config/fish/(uname -s).fish
if test -f $PLATFORM_SPECIFIC_FILE
   . $PLATFORM_SPECIFIC_FILE
else
   echo Creating platform specific file: $PLATFORM_SPECIFIC_FILE
   touch $PLATFORM_SPECIFIC_FILE
end  

set fish_greeting ""
set -x CLICOLOR 1

function parse_git_branch
    sh -c 'git branch --no-color 2> /dev/null' | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
end

function parse_svn_tag_or_branch
        sh -c 'svn info | grep "^URL:" | egrep -o "(tags|branches)/[^/]+|trunk" | egrep -o "[^/]+$"'
end

function parse_svn_revision
    sh -c 'svn info 2> /dev/null' | sed -n '/^Revision/p' | sed -e 's/^Revision: \(.*\)/\1/'
end

function fish_prompt -d "Write out the prompt"
  printf '[' (set_color green)
  printf '%s' (set_color green) (date +"%H:%M:%S") (set_color normal)
  printf '] ' (set_color normal)

  if [ (whoami) = "nmaef" ]
    printf '%s' (set_color brown) (whoami) (set_color normal)
  else
    printf '%s' (set_color red) (whoami) (set_color normal)
  end

  printf '%s@' (set_color brown)

  printf '%s' (set_color brown) (hostname|cut -d . -f 1) (set_color normal)

  # Color writeable dirs green, read-only dirs red
  if test -w "."
    printf ' %s%s' (set_color green) (prompt_pwd)
  else
    printf ' %s%s' (set_color red) (prompt_pwd)
  end

  # Print subversion tag or branch
  if test -d ".svn"
    printf ' %s%s%s' (set_color normal) (set_color blue) (parse_svn_tag_or_branch)
  end

  # Print subversion revision
  if test -d ".svn"
    printf '%s%s@%s' (set_color normal) (set_color blue) (parse_svn_revision)
  end

  # Print git branch
  set tmpvar (parse_git_branch)
  if test -n "$tmpvar"
    printf ' %s%s[%s]' (set_color normal) (set_color blue) (parse_git_branch)
  end
  printf '%s λ ' (set_color normal)
end

if test -d "/opt/java"
   set -x JAVA_HOME "/opt/java"
end

setenv SSH_ENV $HOME/.ssh/environment

if [ -n "$SSH_AGENT_PID" ] 
    ps -ef | grep $SSH_AGENT_PID | grep ssh-agent > /dev/null
    if [ $status -eq 0 ]
        test_identities
    end
else
    if [ -f $SSH_ENV ]
        . $SSH_ENV > /dev/null
    end
    ps -ef | grep $SSH_AGENT_PID | grep -v grep | grep ssh-agent > /dev/null
    if [ $status -eq 0 ]
        test_identities
    else
        start_agent
    end
end
