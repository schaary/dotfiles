
# setenv PATH /usr/local/git/bin $PATH
# setenv PATH /usr/local/texlive/2013/bin/x86_64-darwin $PATH

# ORACLE client
setenv NLS_LANG GERMAN_GERMANY.AL32UTF8
setenv ORACLE_HOME /opt/instantclient_11_2
setenv ORACLE_BASE $ORACLE_HOME
setenv TNS_ADMIN $ORACLE_HOME/network/admin

setenv PATH /Applications/Postgres.app/Contents/Versions/9.4/bin $PATH
setenv PATH $ORACLE_HOME $PATH
setenv PATH $HOME/bin $PATH

setenv DYLD_LIBRARY_PATH $ORACLE_HOME $DYLD_LIBRARY_PATH

setenv MYSQL_HOME /usr/local/mysql
setenv PATH $MYSQL_HOME/bin $PATH
setenv DYLD_LIBRARY_PATH $MYSQL_HOME/lib $DYLD_LIBRARY_PATH

setenv PATH $HOME/.rbenv/bin $PATH
setenv PATH $HOME/.rbenv/shims $PATH
rbenv rehash >/dev/null ^&1

setenv PATH /usr/local/texlive/2015/bin/x86_64-darwin $PATH

setenv LC_ALL "de_DE.UTF-8"
setenv ALTERNATE_EDITOR ""

for i in $HOME/.password/*.fish
  . $i
end
