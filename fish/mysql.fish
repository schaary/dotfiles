
setenv ORACLE_HOME /opt/instantclient_11_2
setenv TNS_ADMIN $ORACLE_HOME/network/admin
setenv LD_LIBRARY_PATH $ORACLE_HOME $LD_LIBRARY_PATH
setenv NLS_LANG GERMAN_GERMANY.AL32UTF8
setenv PATH $ORACLE_HOME $PATH

setenv PATH $HOME/bin $PATH

setenv PATH $HOME/.rbenv/bin $PATH
setenv PATH $HOME/.rbenv/shims $PATH
rbenv rehash >/dev/null ^&1                                                                  

setenv EDITOR '/usr/local/bin/vim' 

for i in $HOME/.password/*.fish
  . $i
end
