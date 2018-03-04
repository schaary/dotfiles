
setenv ORACLE_HOME /u01/app/oracle/product/11.2.0/xe
setenv ORACLE_SID 'XE'
setenv NLS_LANG 'GERMAN_GERMANY.AL32UTF8'

setenv LD_LIBRARY_PATH $ORACLE_HOME $LD_LIBRARY_PATH

setenv PATH $HOME/bin $PATH
setenv PATH /u01/app/oracle/product/11.2.0/xe/bin $PATH

setenv PATH $HOME/.rbenv/bin $PATH
setenv PATH $HOME/.rbenv/shims $PATH
rbenv rehash >/dev/null ^&1                                                             

setenv PATH $HOME/.mix $PATH

setenv EDITOR '/usr/bin/nvim'

for i in $HOME/.password/*.fish
  . $i
end
